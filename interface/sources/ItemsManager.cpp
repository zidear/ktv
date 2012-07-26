#include "ItemsManager.h"
#include <QGraphicsScene>
#include <QGraphicsWidget>
#include "ItemSceneParameter.h"
#include "ItemScreenGlobal.h"
#include "AssertDefine.h"
#include <QtDebug>

const int DEFAULT_PAGE_NUM = 3;
const float DEFAULT_SCENE_WIDTH = VIEW_WIDTH * DEFAULT_PAGE_NUM;

ItemsManager::ItemsManager(QList<QGraphicsWidget*> *_itemList, ItemSceneParameter *_sceneParam, 
						   QGraphicsScene *_scene, int _itemCount, 
						   double _widthIntervalScale, double _heightIntervalScale) 
						   : itemList(_itemList), sceneParam(_sceneParam), itemCount(_itemCount)
						   , itemXCoordinate(DEFAULT_SCENE_WIDTH), curStarItemIndex(0) 
{
	int x = 0;
	int y = 0;
	QRectF rect;
	QGraphicsWidget *item;
	for (int itemIndex = 0; itemIndex < itemCount * DEFAULT_PAGE_NUM; itemIndex++)
	{
		item = itemList->value(itemIndex);
		rect = item->boundingRect();

		x = sceneParam->getColumnOffset(itemIndex);
		y = sceneParam->getRowOffset(itemIndex);

		itemWidth = rect.width() * _widthIntervalScale;
		itemHeight = rect.height() * _heightIntervalScale;
		item->setPos(x * itemWidth, y * itemHeight);
		_scene->addItem(item);
	}
}

ItemsManager::~ItemsManager()
{
}

void ItemsManager::hideAllItems()
{
	QGraphicsWidget *item;
	for (int songrNo = 0; songrNo < itemList->size(); songrNo++)
	{
		item = itemList->value(songrNo);
		item->hide();
	}
}

void ItemsManager::setDefaultItemsPos()
{
	QGraphicsItem *item;
	int x = 0;
	int y = 0;
	QRectF rect;

	initManager();
	curStarItemIndex = itemCount;

	for (int itemIndex = 0; itemIndex < itemCount * 3; itemIndex++)
	{
		item = itemList->value(itemIndex);
		rect = item->boundingRect();

		x = sceneParam->getColumnOffset(itemIndex);
		y = sceneParam->getRowOffset(itemIndex);

		item->setPos(x * itemWidth, y * itemHeight);
	}

	hideAllItems();
}

int ItemsManager::getNextPageIndex()
{
	return pageIndex;
}

void ItemsManager::prepareNextPageItemsPos()
{
	setNextItemsPos(itemXCoordinate);
	itemXCoordinate += VIEW_WIDTH;
	pageIndex++;
}

bool ItemsManager::isItemsMovable()
{
	return pageIndex > 1;
}

void ItemsManager::setLastItemsPos(float _startXCoordinate)
{
	int x = 0;
	int y = 0;
	QRectF rect;
	QGraphicsItem *item;
	int startItemsCount = ((pageIndex + 1) % 3) * itemCount;

	for (int itemIndex = 0; itemIndex < itemCount; itemIndex++)
	{
		item = itemList->value(startItemsCount + itemIndex);
		rect = item->boundingRect();

		x = sceneParam->getColumnOffset(itemIndex);
		y = sceneParam->getRowOffset(itemIndex);

		item->setPos(_startXCoordinate + x * itemWidth, y * itemHeight);
	}
}

void ItemsManager::setNextItemsPos(float _startXCoordinate)
{
	int x = 0;
	int y = 0;
	QRectF rect;
	QGraphicsItem *item;
	int startItemsCount = ((pageIndex - 1) >= 0) ? (pageIndex - 1) : 2;
	startItemsCount = (startItemsCount % 3) * itemCount;

	for (int itemIndex = 0; itemIndex < itemCount; itemIndex++)
	{
		item = itemList->value(startItemsCount + itemIndex);
		rect = item->boundingRect();

		x = sceneParam->getColumnOffset(itemIndex);
		y = sceneParam->getRowOffset(itemIndex);

		item->setPos(_startXCoordinate + x * itemWidth, y * itemHeight);
	}

	scrollToNextPage();
}

void ItemsManager::initManager()
{
	pageIndex = 1;
	itemXCoordinate = DEFAULT_SCENE_WIDTH;
}

int ItemsManager::getPrePageIndex()
{
	return (pageIndex - 2) < 0 ? 0 : (pageIndex - 2);
}

void ItemsManager::scrollToNextPage()
{
	curStarItemIndex = (curStarItemIndex + itemCount) %(itemCount * 3);
}

void ItemsManager::prepareLastPageItemsPos()
{
	//V_ASSERT(isItemsMovable());
	qDebug() << itemXCoordinate;
	setLastItemsPos(itemXCoordinate - VIEW_WIDTH * 4);
	itemXCoordinate -= VIEW_WIDTH;
	itemXCoordinate = itemXCoordinate < 0 ? 0 : itemXCoordinate;

	pageIndex--;

	curStarItemIndex = curStarItemIndex - itemCount;
	curStarItemIndex = curStarItemIndex < 0 ? 18 : curStarItemIndex;
}

QGraphicsWidget* ItemsManager::getItem(int _index)
{
	return itemList->value(curStarItemIndex + _index);
}


