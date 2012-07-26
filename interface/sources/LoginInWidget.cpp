#include "LoginInWidget.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../sqlite/DbUtil.h"
#include "UserInfo.h"

const QString TOP_LEFT_IMAGE = IMAGE_PATH_PREFIX + "collection/topleft.png";
const QString TOP_RIGHT_IMAGE = IMAGE_PATH_PREFIX + "collection/topright.png";
const QString CENTER_IMAGE = IMAGE_PATH_PREFIX + "collection/center.png";
const QString DELETE_IMAGE = IMAGE_PATH_PREFIX + "collection/delete.png";
const QString CONFIRM_IMAGE = IMAGE_PATH_PREFIX + "collection/confirm.png";
const QString INPUT_BOX_IMAGE = IMAGE_PATH_PREFIX + "collection/inputbox.png";
const QString BACKGROUND_IMAGE = IMAGE_PATH_PREFIX + "collection/background.png";

LoginInWidget::LoginInWidget(QWidget *_parent)
	: numberOneButton(TOP_LEFT_IMAGE, this), numberTwoButton(CENTER_IMAGE, this),
	numberThreeButton(TOP_RIGHT_IMAGE, this), numberFourButton(CENTER_IMAGE, this),
	numberFiveButton(CENTER_IMAGE, this), numberSixButton(CENTER_IMAGE, this),
	numberSevenButton(CENTER_IMAGE, this), numberEightButton(CENTER_IMAGE, this),
	numberNightButton(CENTER_IMAGE, this), numberZeroButton(CENTER_IMAGE, this),
	confirmButton(CONFIRM_IMAGE, this), deleteButton(DELETE_IMAGE, this),
	lineEditor(this), parent(_parent), KTVDialog(_parent)
{
	QPalette palette; 
	QImage inputboxImage(INPUT_BOX_IMAGE);
	palette.setBrush(lineEditor.backgroundRole(),QBrush(inputboxImage));
	lineEditor.setPalette(palette);
	lineEditor.setGeometry(40, 50, inputboxImage.width(), inputboxImage.height());

	QFont font;
	font.setPointSize(15);
	font.setBold(true);

	constructButton(&numberOneButton, font, QPoint(40, 120), "1");
	constructButton(&numberTwoButton, font, QPoint(161, 120), "2");
	constructButton(&numberThreeButton, font, QPoint(282, 120), "3");
	constructButton(&numberFourButton, font, QPoint(40, 183), "4");
	constructButton(&numberFiveButton, font, QPoint(161, 183), "5");
	constructButton(&numberSixButton, font, QPoint(282, 183), "6");
	constructButton(&numberSevenButton, font, QPoint(40, 246), "7");
	constructButton(&numberEightButton, font, QPoint(161, 246), "8");
	constructButton(&numberNightButton, font, QPoint(282, 246), "9");
	constructButton(&numberZeroButton, font, QPoint(161, 309), "0");

	deleteButton.setPos(QPoint(40, 309));
	confirmButton.setPos(QPoint(282, 309));

	setBackgroundImage(BACKGROUND_IMAGE);

	setupConnection();
}

LoginInWidget::~LoginInWidget()
{

}

void LoginInWidget::constructButton(KTVButton *_button, const QFont &_font, const QPoint &_point, const QString &_text)
{
	_button->setPos(_point);
	/*_button->setFont(_font);*/
	_button->setText(_text);
}

void LoginInWidget::setupConnection()
{
	connect(&numberOneButton,   SIGNAL(click()), this, SLOT(setText()));
	connect(&numberTwoButton,   SIGNAL(click()), this, SLOT(setText()));
	connect(&numberThreeButton, SIGNAL(click()), this, SLOT(setText()));
	connect(&numberFourButton,  SIGNAL(click()), this, SLOT(setText()));
	connect(&numberFiveButton,  SIGNAL(click()), this, SLOT(setText()));
	connect(&numberSixButton,   SIGNAL(click()), this, SLOT(setText()));
	connect(&numberSevenButton, SIGNAL(click()), this, SLOT(setText()));
	connect(&numberEightButton, SIGNAL(click()), this, SLOT(setText()));
	connect(&numberNightButton, SIGNAL(click()), this, SLOT(setText()));
	connect(&numberZeroButton,  SIGNAL(click()), this, SLOT(setText()));
	connect(&deleteButton, SIGNAL(click()), this, SLOT(deleteCharacter()));

	connect(&confirmButton, SIGNAL(click()), this, SLOT(login()));
}

void LoginInWidget::setText()
{
	KTVButton* button = (KTVButton*)this->sender();
	
	QString text = lineEditor.text();
	lineEditor.setText(text + button->getText());
}

void LoginInWidget::login()
{
	parent->hide();

	UserInfo::Instance()->setUserID(DbUtil::Login(lineEditor.text()));
}


void LoginInWidget::deleteCharacter()
{
	QString text = lineEditor.text();
	text = text.left(text.length() - 1);
	lineEditor.setText(text);
}


