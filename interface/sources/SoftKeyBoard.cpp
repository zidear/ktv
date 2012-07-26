#include "../../baselib/sources/SoftBoardButton.h"
#include "../../baselib/sources/KTVButton.h"
#include "../../baselib/headers/GlobalData.h"
#include "SoftKeyBoard.h"

const QString SOFT_BOARD_BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/softboardbackground.png";
const QString DELETE_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/delete.png";
const QString OK_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/ok.png";
const QString CLEAR_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/clear.png";

SoftKeyBoard::SoftKeyBoard(QWidget *_parent, Qt::WFlags flags)
: letterButtonSize(45, 50), buttonInternal(10), textDisplayer(this), WidgetSubject(_parent, flags)
{
	setBackgroundImage(SOFT_BOARD_BACKGROUND_IMAGE_PATH);

	textDisplayer.setReadOnly(true);
	textDisplayer.setGeometry(60, 30, 377, 47);
	textDisplayer.setStyleSheet("QLineEdit{background-color:rgb(166, 166, 166)}");

	lettersOfFirstColumn << "Q"<< "W"<< "E"<< "R"<< "T"<< "Y"<< "U"<< "I"<< "O"<< "P";
	lettersOfSecondColumn << "A"<< "S"<< "D"<< "F"<< "G"<< "H"<< "J"<< "K"<< "L";
    lettersOfThirdColumn << "" << "Z"<< "X"<< "C"<< "V"<< "B"<< "N"<< "M";

	addLetterButton(lettersOfFirstColumn, QPoint(30, 100));
	addLetterButton(lettersOfSecondColumn, QPoint(60 , 165));

	deleteButton = new KTVButton(DELETE_BUTTON_IMAGE_PATH, this);
	connect(deleteButton, SIGNAL(click()), this, SLOT(deleteLastLetterFromTextDisplayer()));
	deleteButton->setGeometry(455, 30, deleteButton->width(), deleteButton->height());

	clearButton = new KTVButton(CLEAR_BUTTON_IMAGE_PATH, this);
	connect(clearButton, SIGNAL(click()), this, SLOT(clearLastLetterFromTextDisplayer()));
	clearButton->setGeometry(573, 30, clearButton->width(), clearButton->height());

	addLetterButton(lettersOfThirdColumn, QPoint(30, 230));

	confirmButton = new KTVButton(OK_BUTTON_IMAGE_PATH, this);
	connect(confirmButton, SIGNAL(click()), this, SLOT(emitFiltSignal()));
	confirmButton->setGeometry(573, 230
		, confirmButton->width(), confirmButton->height());
}

SoftKeyBoard::~SoftKeyBoard(void)
{
	for (int buttonNo = 0; buttonNo < buttonManager.size(); buttonNo++)
	{
		delete buttonManager[buttonNo];
	}

	delete confirmButton;
	delete deleteButton;
	delete clearButton;
}

void SoftKeyBoard::emitFiltSignal()
{
	emit validFilter(textDisplayer.text());
}

void SoftKeyBoard::addLetterButton(const QList<QString> &buttonNames, QPoint _startPoint)
{
	SoftBoardButton *button;

	for (int buttonNo = 0; buttonNo < buttonNames.size(); buttonNo++)
	{
		button = new SoftBoardButton(buttonNames[buttonNo], this);

		button->setShowPoint(QPoint(_startPoint.x() + (button->width() + buttonInternal) * buttonNo, _startPoint.y()));

		connect(button, SIGNAL(click()), this, SLOT(appendLetterToTextDisplayer()));

		buttonManager.append(button);
	}
}

void SoftKeyBoard::appendLetterToTextDisplayer()
{
	SoftBoardButton* button = (SoftBoardButton*)this->sender();

	QString text = textDisplayer.text() + button->getButtonText();
	textDisplayer.setText(text);
}

void SoftKeyBoard::deleteLastLetterFromTextDisplayer()
{
	QString text = textDisplayer.text();
	text = text.left(text.length() - 1);
	textDisplayer.setText(text);
}

void SoftKeyBoard::clearLastLetterFromTextDisplayer()
{
	textDisplayer.setText("");;
}

#include "moc_SoftKeyBoard.cpp"
