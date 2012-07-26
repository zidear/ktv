#include <QApplication>
#include <QDesktopWidget>

#include "MainWindowBottomWidget.h"
#include "../KtvScreenController.h"
#include "../../baselib/sources/ConfigParser.h"

#ifndef WIN32
#include "../../player/ktv.h"
#endif

const QString BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Common/toolbackground.png";

MainWindowBottomWidget::MainWindowBottomWidget(QWidget *parent) 
: heightSpace(30), bkImge(BACKGROUND_IMAGE_PATH), userSongsPanel(this), tuningMaskWidget(parent), QWidget(parent, Qt::FramelessWindowHint){

	int desktopWidth = QApplication::desktop()->screenGeometry().width();
	int desktopHeight = QApplication::desktop()->screenGeometry().height();;

	widgetHeight = bkImge.height() + heightSpace;

	this->setGeometry(0, desktopHeight - widgetHeight, 
		desktopWidth, 
		widgetHeight);

	setVisible(true);
}

void MainWindowBottomWidget::display(void)
{
	ConfigParser config(CONFIG_PREFIX + "MainWindowBottom.ini");
	manager.AddButton(&config, this);

 	slider = new QSlider(Qt::Horizontal, this);
	slider->setFocusPolicy(Qt::NoFocus);
	slider->setGeometry(210, 20 + heightSpace, 200, 30);
	slider->setRange(0, 100);
	slider->setValue(50);
	slider->setStyleSheet(
		"QSlider::groove:horizontal {                                "
		"     border: 1px solid #999999;                             "
		"     height: 2px;                                           "
		"     margin: 0px 0;                                         "
		"     left: 12px; right: 12px;                               "
		" }                                                          "
		"QSlider::handle:horizontal {                                "
		"     border: 1px solid #5c5c5c;                             "
		"	 border-image:url(image/skin2/Toolsicon/volumnslider.png);"
		"     width: 18px;                                           "
		"     margin: -7px -7px -7px -7px;                           "
		" }                                                          "
		"                                                            "
		"QSlider::sub-page:horizontal{                               "
		"	background: qlineargradient(spread:pad, x1:0, y1:1, x2:0, y2:0, stop:0 rgba(27, 5, 27, 255), stop:0.25 rgba(99, 20, 102, 255), stop:0.5 rgba(154, 30, 158, 255), stop:1 rgba(173, 57, 176, 255));                      "
		"}                                                           "
		"QSlider::add-page:horizontal{                               "
		"	background-image:url(image/skin2/Toolsicon/volumn.png)   "
		"}"
		);	

	this->_setupSignalConnection();
}

void MainWindowBottomWidget::_setupSignalConnection(){
	MyButton* p_mb = manager.FindButton("Toolsicon/next");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(NextSong()));
	p_mb = manager.FindButton("Toolsicon/YC");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(OriginalVoice()));
	p_mb = manager.FindButton("Toolsicon/replay");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(replay()));
	p_mb = manager.FindButton("Toolsicon/mute");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(Silent()));
	p_mb = manager.FindButton("Toolsicon/tuneUp");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(tuneUp()));

	connect(slider, SIGNAL(valueChanged(int)), this, SLOT(volumnAdjust(int)));
}

/***************************************************************************************************************
 * SLOTS implementation.
 */

void MainWindowBottomWidget::paintEvent(QPaintEvent *event)
{
	printf("MainWindowBottomWidget::paintEvent start!\n");
	QPainter painter(this);

	if (bkImge.isNull())
	{
		printf("MainWindowBottomWidget::bkImge is NULL!\n");
		return;
	}

	painter.drawImage(QPoint(0, heightSpace), bkImge);

	printf("MainWindowBottomWidget::paintEvent end!\n");
}

void MainWindowBottomWidget::volumnAdjust(int _volumn)
{
#ifndef WIN32
//	Audio_adjustVolumn((unsigned int)_volumn);
#endif
}

void MainWindowBottomWidget::Silent(){
	static bool isMuteState = true;
/*
#ifndef WIN32
	if (isMuteState)
	{
		Audio_mute();
		isMuteState = false;
	}
	else
	{
		Audio_normal();
		isMuteState = true;
	}
#endif
*/
}

void MainWindowBottomWidget::OriginalVoice()
{

}

void MainWindowBottomWidget::NextSong()
{
#ifndef WIN32
//	nextSong(0, 0);
#endif
}

void MainWindowBottomWidget::tuneUp()
{
	tuningMaskWidget.show();
}

void MainWindowBottomWidget::replay()
{
#ifndef WIN32
//	ktv_replay();
#endif
}

void MainWindowBottomWidget::playOrPause()
{
	static bool isPlayState = true;
/*
#ifndef WIN32
	if (isPlayState)
	{
		ktv_pause();
		isPlayState = false;
	}
	else
	{
		ktv_resume();
		isPlayState = true;
	}
#endif
*/
}

