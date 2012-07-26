#include <QApplication>
#include <QDesktopWidget>

#include "UserSongWidget.h"
#include "../../baselib/headers/MyButton.h"
#include "SelectedSongListSubject.h"

const QString BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/selectedbackground.png";
const QString SELECTED_SONG_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/selectedButton.png";

UserSongWidget::UserSongWidget(QWidget *parent) 
: heightSpace(15), bkImge(BACKGROUND_IMAGE_PATH), 
  selectedSongButton(5, 20, SELECTED_SONG_IMAGE_PATH, this), 
  songNumDisplayer(this), curSongProgress(this),
  songName("", &curSongProgress), songListWidget(0),
  singerName("", &curSongProgress), 
  QWidget(parent, Qt::FramelessWindowHint)
{
	setGeometry(920, 0, bkImge.width(), bkImge.height() + heightSpace);
	setVisible(true);	

	SelectedSongListSubject::Instance()->registerObserver(&songNumDisplayer);

	curSongProgress.setGeometry(82, 20, 250, 50);
	curSongProgress.setTextVisible(false);
	curSongProgress.setStyleSheet("QProgressBar{"
		"border: 1px solid grey;"
		"border-radius: 5px;"
		"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:0, y2:1, stop:0 rgba(123, 123, 123, 255), stop:0.5 rgba(66, 66, 66, 255), stop:0.51 rgba(52, 52, 52, 255), stop:1 rgba(101, 101, 101, 255));"
	"}\n"
	"QProgressBar::chunk {"
	"background-color: qlineargradient(spread:pad, x1:0, y1:0, x2:0, y2:1, stop:0 rgba(164, 123, 168, 255), stop:0.5 rgba(169, 63, 173, 255), stop:0.51 rgba(165, 47, 168, 255), stop:1 rgba(253, 95, 253, 255));"
	"}"
	);
	curSongProgress.setValue(50);

	QFont labelfont(GlobalData::CharacterFont, 12, QFont::Bold);
	songName.setStyleSheet("QLabel{color:white;}");
	/*songName.setFont(labelfont);*/
	songName.setGeometry(7, 2, 150, 48);
	songName.setText(tr("°×ÔÂ¹â"));

	singerName.setStyleSheet("QLabel{color:white;}");
	/*singerName.setFont(labelfont);*/
	singerName.setGeometry(180, 2, 60, 48);
	singerName.setText(tr("ÕÅÓî"));

	_setupSignalConnection();
}

UserSongWidget::~UserSongWidget()
{
}


void UserSongWidget::display(void)
{
}

void UserSongWidget::_setupSignalConnection()
{
	connect(&selectedSongButton, SIGNAL(click()), &songListWidget, SLOT(show()));
}


/***************************************************************************************************************
 * SLOTS implementation.
 */

void UserSongWidget::paintEvent(QPaintEvent *event){
	printf("UserSongWidget::paintEvent start!\n");

	QPainter painter(this);

	if (bkImge.isNull())
	{
		printf("UserSongWidget::bkImge is NULL!\n");
		return;
	}

	painter.setOpacity(0.99);

	painter.drawImage(QPoint(0, heightSpace), bkImge);

	printf("UserSongWidget::paintEvent end!\n");
}


