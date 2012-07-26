#include "HomeSceneParameter.h"
#include "../KtvScreenController.h"

#include <QPushButton>
#include <QBitmap>

#include "../../embeddeddialogs/customproxy.h"
#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/ConfigParser.h"

#include "StarItemDisplayer.h"
#include "SongItemDisplayer.h"
#include "TopSceneParameter.h"
#include "TopicSceneParameter.h"
#include "../headers/MainWindowView.h"

HomeSceneParameter::HomeSceneParameter(QWidget *_parent) 
: loginInMaskWidget(_parent), SceneParameter()
{
	songItemView = new SongItemDisplayer(_parent);
	starItemView = new StarItemDisplayer(songItemView, _parent);

	topScene = new TopSceneParameter(songItemView, _parent);
	topView = new MainWindowView(topScene, _parent);
	topView->setGeometry(50, 50, 1230, 600);
	topView->setVisible(false);

	topicScene = new TopicSceneParameter(songItemView, _parent);
	topicView = new MainWindowView(topicScene, _parent);
	topicView->setGeometry(50, 50, 1230, 600);
	topicView->setVisible(false);


	displayAllItems();
	scene->setStickyFocus(true);
	scene->setSceneRect(scene->itemsBoundingRect());
	
	addAction();
}

HomeSceneParameter::~HomeSceneParameter()
{
	delete starItemView;
	delete songItemView;
	delete topScene;
	delete topView;
}

void HomeSceneParameter::displayAllItems()
{
	ConfigParser config(CONFIG_PREFIX + "MainScreen.ini");
	manager.AddRotateButton(&config, scene);
}

void HomeSceneParameter::addAction(){

	QObject::connect(&animationGroup, SIGNAL(finished()), this, SLOT(showWidget()));

	//addButtonAction("MainScreen/newsong", );
	addButtonAction("MainScreen/rankinglist", topView);
	addButtonAction("MainScreen/collection", &loginInMaskWidget);
	addButtonAction("MainScreen/star", starItemView);
	addButtonAction("MainScreen/song", songItemView);
	addButtonAction("MainScreen/topic", topicView);
	addButtonAction("MainScreen/entertainment", &addSingleSongWidget);
}

QRect HomeSceneParameter::getAnimationEndValue(const QRect &_widgetRect)
{
	QRect widgetRect = _widgetRect; 
	if (widgetRect.x() < 300)
	{
		widgetRect.setX(-widgetRect.width() - 20);
	}
	else if (widgetRect.x() > 700)
	{
		widgetRect.setX(1280 + widgetRect.width() + 20);
	}
	else if (widgetRect.y() > 260)
	{
		widgetRect.setY(740 + widgetRect.height());
	}
	else
	{
		widgetRect.setY(-widgetRect.height() - 20);
	}

	return widgetRect;
}

void HomeSceneParameter::addButtonAction(const QString &_buttonName, 
										 QWidget* _widget)
{
	MyButton *button = manager.FindButton(_buttonName);
	QObject::connect(button, SIGNAL(click()), this, SLOT(setWidget()));

	widgetMap[button] = _widget;

	QPropertyAnimation *animation = new QPropertyAnimation(button, "geometry", this);
	animation->setDuration(500);
	animation->setEasingCurve(QEasingCurve::InCubic);
	animation->setStartValue(button->geometry());
	animation->setEndValue(getAnimationEndValue(button->geometry()));
	animationGroup.addAnimation(animation);
}

void HomeSceneParameter::setWidget()
{
	MyButton *button = (MyButton *)this->sender();
	animationGroup.setDirection(QAbstractAnimation::Forward);
	animationGroup.start();
	curWidget = widgetMap[button];
}

void HomeSceneParameter::showWidget()
{
	KtvScreenController::GetController()->Forward(curWidget);
}

void HomeSceneParameter::showMainWidget()
{
	if (animationGroup.state() != QAbstractAnimation::Stopped)
	{
		return;
	}

	curWidget = 0;

	animationGroup.setDirection(QAbstractAnimation::Backward);
	animationGroup.start();
}

