#include "SongItemSceneParameter.h"
#include "../KtvScreenController.h"

#include <QPushButton>
#include <QList>
#include <QtDebug>
#include <QGraphicsView>

#include "../../embeddeddialogs/customproxy.h"
#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/ConfigParser.h"
#include "SongItem.h"
#include "PreviewMaskWidget.h"
#include "../../sqlite/DbUtil.h"
#include "ItemsManager.h"
#include "AssertDefine.h"

SongItemSceneParameter::SongItemSceneParameter() 
: maxPage(0), rowNum(3), columnNum(3), preparePageNum(3), 
  itemCount(9), nextPageIndex(0), nextPageX(0), isPrepareble(false), 
  ItemSceneParameter()
{
	scene->setStickyFocus(true);

	addAction();
}

SongItemSceneParameter::~SongItemSceneParameter()
{
	delete itemsManager;

	SongItem *item;
	for (int itemIndex = 0; itemIndex < itemCount * 3; itemIndex)
	{
		item = itemList.value(itemIndex);
		delete item;
	}
}

void SongItemSceneParameter::setPreview(PreviewMaskWidget *_previewWidget)
{
	previewWidget = _previewWidget;

	SongItem *songItem;
	for (int itemIndex = 0; itemIndex < itemCount * 3; itemIndex++)
	{
		songItem = new SongItem(previewWidget);
		itemList.append(songItem);
	}

	itemsManager = new ItemsManager(reinterpret_cast<QList<QGraphicsWidget*>*>(&itemList), 
		this, scene, itemCount, 1.1, 1.1);
}

void SongItemSceneParameter::setDefaultItemsSQLOfScene(const QString &_sqlStr)
{
	defaultItemsSQLStr = _sqlStr;

	itemsManager->initManager();
	updateScene(defaultItemsSQLStr);
}

void SongItemSceneParameter::updateScene(const QString &_songQueryStr)
{
	itemsManager->setDefaultItemsPos();

	emitPageCountOfSongs(_songQueryStr);

	queryItemsFromDatabase(_songQueryStr, itemsManager->getPrePageIndex());
	/*itemsManager->scrollToNextPage();*/

	int viewWidth = 1280;
	QRectF sceneRect = scene->itemsBoundingRect();
	int sceneWidth = sceneRect.width();
	if (viewWidth > sceneWidth)
	{
		scene->setSceneRect(0, 0, viewWidth, 500);
		return;
	}

	/* update scene size */
	scene->setSceneRect(scene->itemsBoundingRect());

	scrollToDefaultPos();
}

void SongItemSceneParameter::displayAllItems()
{
	updateScene(defaultItemsSQLStr);
}

void SongItemSceneParameter::addItemsFromDatabase(const QList<SongStruct> &songs)
{
	SongItem *item;

	for (int songrNo = 0; songrNo < songs.size(); songrNo++)
	{
		item = dynamic_cast<SongItem*>(itemsManager->getItem(songrNo));
		item->setInfo(songs.value(songrNo));
		item->show();
	}
}

bool SongItemSceneParameter::queryItemsFromDatabase(const QString &_songQueryStr, int _pageIndex, int _itemCount)
{
	R_ASSERT((_pageIndex >= 0) && (_pageIndex < maxPage), false);

	songSqlitReader.setSQLQueryStr(_songQueryStr);
	songSqlitReader.setPageIndex(_pageIndex);
	songSqlitReader.setItemsOfOnePage(_itemCount);
	songSqlitReader.start();

	return true;
}

bool SongItemSceneParameter::queryItemsFromDatabase(const QString &_songQueryStr, int _pageIndex)
{
	return queryItemsFromDatabase(_songQueryStr, _pageIndex, itemCount);
}

#if 0
bool SongItemSceneParameter::addItemsFromDatabase(const QString &_songQueryStr, int _pageIndex)
{
	SongItem *item;
	QList<SongStruct> songs;

	songs = DbUtil::GetSong_Page(_songQueryStr, _pageIndex, itemCount);

	R_ASSERT((_pageIndex >= 0) && (_pageIndex < maxPage));

	for (int songrNo = 0; songrNo < songs.size(); songrNo++)
	{
		item = dynamic_cast<SongItem*>(itemsManager->getItem(songrNo));
		item->setInfo(songs.value(songrNo));
		item->show();
	}

	return true;
}
#endif

int SongItemSceneParameter::getColumnOffset(int _curIndex)
{
	/* current item index is even number,then column add one*/
	return _curIndex / columnNum;
}

int SongItemSceneParameter::getRowOffset(int _curIndex)
{
	/* current item index is odd number,then row add one*/
	return _curIndex % rowNum;
}

void SongItemSceneParameter::addAction()
{
	connect(&songSqlitReader, SIGNAL(getSongs(const QList<SongStruct>&)), this, SLOT(addItemsFromDatabase(const QList<SongStruct>&)));
}

bool SongItemSceneParameter::prepareNext()
{
	R_ASSERT(queryItemsFromDatabase(defaultItemsSQLStr, itemsManager->getNextPageIndex()), false);

	itemsManager->prepareNextPageItemsPos();
	qDebug() << scene->itemsBoundingRect();
	scene->setSceneRect(scene->itemsBoundingRect());

	return true;
}

bool SongItemSceneParameter::prepareLast()
{
	R_ASSERT(queryItemsFromDatabase(defaultItemsSQLStr, itemsManager->getPrePageIndex()), false);

	itemsManager->prepareLastPageItemsPos();

	return true;
}

void SongItemSceneParameter::emitPageCountOfSongs( const QString & _songQueryStr )
{
	PageInfo pi = DbUtil::getPageInfo(_songQueryStr, 0, itemCount);

	maxPage = pi.PageCount;

	emit changePagesCount(maxPage);
}


