#ifndef ITEMSMANAGER_H
#define ITEMSMANAGER_H

#include <QList>
#include "StarItem.h"

struct ItemSceneParameter;
class QGraphicsScene;

class ItemsManager
{
public:
	ItemsManager(QList<QGraphicsWidget*> *_itemList, ItemSceneParameter *_sceneParam, 
		QGraphicsScene *_scene, int _itemCount, double _widthIntervalScale, 
		double _heightIntervalScale);
	~ItemsManager();

	int getNextPageIndex();
	void prepareNextPageItemsPos();
	void prepareLastPageItemsPos();
	void initManager();
	int getPrePageIndex();
	void scrollToNextPage();
	QGraphicsWidget* getItem(int _index);
	void setDefaultItemsPos();
	void hideAllItems();

private:
	bool isItemsMovable();
	void setNextItemsPos(float _startXCoordinate);
	void setLastItemsPos(float _startXCoordinate);
	

private:
	ItemSceneParameter *sceneParam;
	QList<QGraphicsWidget*> *itemList;
	int curStarItemIndex;
	int pageIndex;
	const int itemCount;
	float itemXCoordinate;
	double itemWidth;
	double itemHeight;
};

#endif // ITEMSMANAGER_H
