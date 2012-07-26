#include <QPalette>

#include "MainWindowTopWidget.h"
#include "../KtvScreenController.h"
#include "../KtvScreenController.h"
#include "../../baselib/sources/ConfigParser.h"
#include "../KtvScreenController.h"

MainWindowTopWidget::MainWindowTopWidget(QWidget *parent) 
: scrollWidget(this), serviceMaskWidget(parent), atmosphereMaskWidget(parent), QWidget(parent,Qt::FramelessWindowHint){

	this->setGeometry(0, 10, 900, 40);
	setAutoFillBackground(true);

	QPalette pal = palette(); 
	pal.setColor(QPalette::Background, QColor(0xff,0xff,0xff,0x0)); 
	setPalette(pal);
	setVisible(true);
}

void MainWindowTopWidget::display(void)
{
	ConfigParser config(CONFIG_PREFIX + "MainWindowTop.ini");
	manager.AddButton(&config, this);

	this->_setupSignalConnection();
}

void MainWindowTopWidget::_setupSignalConnection(){
	MyButton* p_mb = manager.FindButton("Toolsicon/home");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(HomePage()));
	p_mb = manager.FindButton("Toolsicon/server");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(Service()));
	p_mb = manager.FindButton("Toolsicon/mood");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(Atmosphere()));
}

/***************************************************************************************************************
 * SLOTS implementation.
 */

void MainWindowTopWidget::HomePage(){
	KtvScreenController::GetController()->Home();
}

void MainWindowTopWidget::Atmosphere()
{
	atmosphereMaskWidget.show();
}

void MainWindowTopWidget::Service()
{
	serviceMaskWidget.show();
}

void MainWindowTopWidget::modifyScrollText(QString &_content)
{
	scrollWidget.changeContent(_content);
}

