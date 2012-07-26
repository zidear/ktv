#ifndef STAR_SCENE_PARAMETER_H
#define STAR_SCENE_PARAMETER_H

#include <QList>
#include "ItemSceneParameter.h"
#include "../sources/ButtonManager.h"
#include "../../baselib/headers/DataStruct.h"

class ItemsManager;
class StarItem;

struct StarItemSceneParameter : public ItemSceneParameter
{
	Q_OBJECT

public:
	StarItemSceneParameter();
	~StarItemSceneParameter();
	void displayAllItems();
	void updateScene(const QString &_sqlStr);
	void setDefaultItemsSQLOfScene(const QString &_sqlStr);
	bool prepareNext();
	bool prepareLast();

private:
	void addAction();
	int getColumnOffset(int _curIndex);
	int getRowOffset(int _curIndex);
	bool addItemsFromDatabase(const QString &_sql, int _pageIndex);	
	void setNextItemsPos(float _startXCoordinate);
	bool isItemsMovable();
	void setDefaultItemsPos();

signals:
	void songOfStarDisplay(int _starIndex);

private slots:
	void displaySong();

private:
	QList<StarItem*> itemList;
	QList<SingerStruct> singers;
	QString defaultItemsSQLStr;
	const int itemCount;
	int maxPage;
	ItemsManager *itemsManager;
};

#endif
