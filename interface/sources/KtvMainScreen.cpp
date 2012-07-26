#include "../headers/KtvMainScreen.h"
#include "../KtvScreenController.h"
#include "../../baselib/sources/ConfigParser.h"
#include "HomeSceneParameter.h"
#include "../../baselib/headers/GlobalData.h"

#include <QStringList>
#include <QPixmap>

const QString KTV_SCREEN_IMAGE_PATH = IMAGE_PATH_PREFIX + "Common/Template1.png";

KtvMainScreen::KtvMainScreen(QWidget *parent) 
: imagePath(IMAGE_PATH_PREFIX + "Common/Template1.png"), 
#ifndef WIN32
//playScreen(this, Qt::FramelessWindowHint), 
#endif
QMainWindow(parent,Qt::FramelessWindowHint)
{
	/*setAttribute(Qt::WA_TranslucentBackground, true);*/

	_p_image = new QPixmap(KTV_SCREEN_IMAGE_PATH);

	topWidget = new MainWindowTopWidget(this);
	bottomWidget = new MainWindowBottomWidget(this);
	
	mainWindowParameter = new HomeSceneParameter(this);
	mainWidget = new MainWindowView(mainWindowParameter, this);
	mainWidget->setGeometry(50, 50, 1230, 600);

	this->setGeometry(0,0,this->_p_image->width(),this->_p_image->height());

}

KtvMainScreen::~KtvMainScreen()
{
	delete topWidget;
	delete bottomWidget;
	delete mainWindowParameter;
	delete mainWidget;
	delete _p_image;
}

void KtvMainScreen::display(void)
{
	KtvScreenController::GetController()->Forward(mainWidget);

	topWidget->display();
	bottomWidget->display();

	show();
}

/***************************************************************************************************************
 * SLOTS implementation.
 */

void KtvMainScreen::paintEvent(QPaintEvent *event){
	QPainter painter(this);

	if (_p_image->isNull())
	{
		printf("KtvMainScreen::_p_image is NULL!\n");
		return;
	}

	if(!_p_image->isNull())
	{
		painter.drawPixmap(0, 0, *_p_image);
	}
}

void KtvMainScreen::mouseDoubleClickEvent(QMouseEvent *event){
	this->close();
}

void KtvMainScreen::mousePressEvent(QMouseEvent *event){

}

