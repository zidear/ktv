#include "TopicSceneParameter.h"

#include <QPushButton>

#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/ConfigParser.h"
#include "../KtvScreenController.h"

#include "SongItemDisplayer.h"


TopicSceneParameter::TopicSceneParameter(SongItemDisplayer *_itemDisplayer, QWidget *_parent) 
: songItemDisplayer(_itemDisplayer), SceneParameter(), 
sqlStr("SELECT a.* FROM Song AS a where a.songCategory='%1' ORDER BY a.songId DESC")
{

	displayAllItems();
	scene->setSceneRect(scene->itemsBoundingRect());
	addAction();
}

TopicSceneParameter::~TopicSceneParameter()
{
}

void TopicSceneParameter::displayAllItems()
{
	ConfigParser config(CONFIG_PREFIX + "TopicScreen.ini");
	manager.AddRotateButton(&config, scene);
}

void TopicSceneParameter::addAction()
{
	MyButton* p_mb = manager.FindButton("MainScreen/disco");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayDiscoTopic()));
	p_mb = manager.FindButton("MainScreen/childsong");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayChildTopic()));
	p_mb = manager.FindButton("MainScreen/resolutionsong");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayResolutionTopic()));
	p_mb = manager.FindButton("MainScreen/chorussong");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayChorusTopic()));
	p_mb = manager.FindButton("MainScreen/frienddance");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayFriendDanceTopic()));
	p_mb = manager.FindButton("MainScreen/pekingopera");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayPekingOperaTopic()));
	p_mb = manager.FindButton("MainScreen/pop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayPopTopic()));
	p_mb = manager.FindButton("MainScreen/joyoussong");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayJoyousTopic()));
	p_mb = manager.FindButton("MainScreen/opera");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayOperaTopic()));
	p_mb = manager.FindButton("MainScreen/folksong");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayFolkTopic()));
}

void TopicSceneParameter::displayDiscoTopic()
{
	displayTopic("DISCO");
}

void TopicSceneParameter::displayChildTopic()
{
	displayTopic("¶ùÍ¯");
}

void TopicSceneParameter::displayChorusTopic()
{
	displayTopic("ºÏ³ª");
}

void TopicSceneParameter::displayFolkTopic()
{
	displayTopic("Ãñ¸è");
}

void TopicSceneParameter::displayFriendDanceTopic()
{
	displayTopic("ÓÑÒê");
}

void TopicSceneParameter::displayJoyousTopic()
{
	displayTopic("Ï²Çì");
}

void TopicSceneParameter::displayOperaTopic()
{
	displayTopic("Ï·Çú");
}

void TopicSceneParameter::displayPekingOperaTopic()
{
	displayTopic("¾©¾ç");
}

void TopicSceneParameter::displayPopTopic()
{
	displayTopic("Á÷ÐÐ");
}

void TopicSceneParameter::displayResolutionTopic()
{
	displayTopic("¸ïÃü");
}

void TopicSceneParameter::displayTopic(const QString &_value)
{
	songItemDisplayer->updateData(sqlStr.arg(_value));
	KtvScreenController::GetController()->Forward(songItemDisplayer);
}
