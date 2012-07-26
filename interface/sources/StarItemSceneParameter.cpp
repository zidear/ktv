#include "StarItemSceneParameter.h"
#include "../KtvScreenController.h"

#include <QPushButton>
#include <QBitmap>
#include <QRectF>

#include "../../embeddeddialogs/customproxy.h"
#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/ConfigParser.h"
#include "StarItem.h"
#include "../../sqlite/DbUtil.h"
#include "ItemScreenGlobal.h"
#include "AssertDefine.h"
#include "ItemsManager.h"

StarItemSceneParameter::StarItemSceneParameter() 
: itemCount(10), ItemSceneParameter()
{
	StarItem *starItem;
	for (int itemIndex = 0; itemIndex < itemCount * 3; itemIndex++)
	{
		starItem = new StarItem;
		itemList.append(starItem);

		connect(starItem, SIGNAL(clicked()), this, SLOT(displaySong()));

	}
	
	itemsManager = new ItemsManager(reinterpret_cast<QList<QGraphicsWidget*>*>(&itemList), 
		this, scene, itemCount, 1.48, 1.1);
	scene->setStickyFocus(true);

	addAction();
}

StarItemSceneParameter::~StarItemSceneParameter()
{
	delete itemsManager;

	StarItem *item;
	for (int itemIndex = 0; itemIndex < itemCount * 3; itemIndex)
	{
		item = itemList.value(itemIndex);
		delete item;
	}
}

void StarItemSceneParameter::setDefaultItemsSQLOfScene(const QString &_sqlStr)
{
	defaultItemsSQLStr = _sqlStr;

	itemsManager->initManager();
	updateScene(defaultItemsSQLStr);
}


bool StarItemSceneParameter::addItemsFromDatabase(const QString &_sql, int _pageIndex)
{
	PageInfo pi;
	StarItem *item;
	singers = DbUtil::GetSinger_Page(_sql, _pageIndex, QList<QVariant>(), &pi, itemCount);

	maxPage = pi.PageCount;

	R_ASSERT((_pageIndex >= 0) && (_pageIndex < maxPage), false);

	for (int singerNo = 0; singerNo < singers.size(); singerNo++)
	{
		item = dynamic_cast<StarItem*>(itemsManager->getItem(singerNo));
		item->setSingerInfo(singers[singerNo]);
		item->show();
	}

	emit changePagesCount(pi.PageCount);
	return true;
}

void StarItemSceneParameter::displayAllItems()
{
 	updateScene(defaultItemsSQLStr);
}

int StarItemSceneParameter::getColumnOffset(int _curIndex)
{
	/* current item index is even number,then column add one*/
	return _curIndex / 2;
}

int StarItemSceneParameter::getRowOffset(int _curIndex)
{
	/* current item index is odd number,then row add one*/
	return _curIndex % 2 ;
}

void StarItemSceneParameter::addAction()
{
}

void StarItemSceneParameter::displaySong()
{
	StarItem* selectedItem = qobject_cast<StarItem*>(this->sender());

	emit songOfStarDisplay(selectedItem->getSingerID());
}

void StarItemSceneParameter::updateScene(const QString &_sqlStr)
{
	itemsManager->setDefaultItemsPos();
	(void)addItemsFromDatabase(_sqlStr, itemsManager->getPrePageIndex());
	itemsManager->scrollToNextPage();

	int viewWidth = 1100;
	QRectF sceneRect = scene->itemsBoundingRect();
	int sceneWidth = sceneRect.width();
	if (viewWidth > sceneWidth)
	{
		scene->setSceneRect(0, 0, viewWidth, sceneRect.height());
		return;
	}

	/* update scene size */
	scene->setSceneRect(scene->itemsBoundingRect());
}

bool StarItemSceneParameter::prepareNext()
{
	R_ASSERT(addItemsFromDatabase(defaultItemsSQLStr, itemsManager->getNextPageIndex()), false);

	itemsManager->prepareNextPageItemsPos();

	scene->setSceneRect(scene->itemsBoundingRect());

	return true;
}

bool StarItemSceneParameter::prepareLast()
{
	R_ASSERT(!(addItemsFromDatabase(defaultItemsSQLStr, itemsManager->getPrePageIndex() - 2)), false);

	itemsManager->prepareLastPageItemsPos();

	scene->setSceneRect(scene->itemsBoundingRect());

	return true;
}

