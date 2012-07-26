#include "TopSceneParameter.h"

#include <QPushButton>

#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/ConfigParser.h"
#include "../KtvScreenController.h"

#include "SongItemDisplayer.h"


TopSceneParameter::TopSceneParameter(SongItemDisplayer *_itemDisplayer, QWidget *_parent) 
: songItemDisplayer(_itemDisplayer), SceneParameter()
{

	displayAllItems();
	scene->setSceneRect(scene->itemsBoundingRect());
	
	addAction();
}

TopSceneParameter::~TopSceneParameter()
{
}

void TopSceneParameter::displayAllItems()
{
	ConfigParser config(CONFIG_PREFIX + "TopScreen.ini");
	manager.AddRotateButton(&config, scene);
}

void TopSceneParameter::addAction(){
	MyButton* p_mb = manager.FindButton("MainScreen/chinesetop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayChineseTop()));
	p_mb = manager.FindButton("MainScreen/taiwanesetop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayTaiwaneseTop()));
	p_mb = manager.FindButton("MainScreen/newsongtop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayNewSongTop()));
	p_mb = manager.FindButton("MainScreen/monthtop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayAllTop()));
	p_mb = manager.FindButton("MainScreen/cantonesetop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayCantoneseTop()));
	p_mb = manager.FindButton("MainScreen/weektop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayAllTop()));
	p_mb = manager.FindButton("MainScreen/alltop");
	if(p_mb)QObject::connect(p_mb, SIGNAL(click()),this, SLOT(displayAllTop()));
}

void TopSceneParameter::displayAllTop()
{
	QString sql = "SELECT a.* FROM Song AS a ORDER BY a.songPlayCount DESC";
	displayTop(sql);
}


void TopSceneParameter::displayCantoneseTop()
{
	displayLanguageTop("ÔÁ");
}


void TopSceneParameter::displayTaiwaneseTop()
{
	displayLanguageTop("Ì¨");
}
void TopSceneParameter::displayChineseTop()
{
	displayLanguageTop("¹ú");
}

void TopSceneParameter::displayNewSongTop()
{
	QString sql = "SELECT a.* FROM Song AS a where a.newsong=1 ORDER BY a.songPlayCount DESC";
	displayTop(sql);
}

void TopSceneParameter::displayTop(const QString &_sql)
{
	songItemDisplayer->updateData(_sql);
	KtvScreenController::GetController()->Forward(songItemDisplayer);
}

void TopSceneParameter::displayLanguageTop(const QString &_value)
{
	QString sql = "SELECT a.* FROM Song AS a where a.songLanguage='%1' ORDER BY a.songPlayCount DESC";
	displayTop(sql.arg(_value));
}


#include "moc_TopSceneParameter.cpp"
