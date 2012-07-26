#ifndef SONG_SCENE_PARAMETER_H
#define SONG_SCENE_PARAMETER_H

#include "ItemSceneParameter.h"
#include "../sources/ButtonManager.h"
#include "../../baselib/headers/DataStruct.h"
#include "SqlitReadThread.h"

class PreviewMaskWidget;
class SongItem;
class ItemsManager;

struct SongItemSceneParameter : public ItemSceneParameter
{
	Q_OBJECT

public:
	SongItemSceneParameter();
	~SongItemSceneParameter();

public:
	void displayAllItems();
	void updateScene(const QString &_songQueryStr);

	void emitPageCountOfSongs(const QString & _songQueryStr);
	void setDefaultItemsSQLOfScene(const QString &_sqlStr);
	void setPreview(PreviewMaskWidget *_previewWidget);
	bool prepareNext();
	bool prepareLast();
	bool queryItemsFromDatabase(const QString &_songQueryStr, int _pageIndex);
	bool queryItemsFromDatabase(const QString &_songQueryStr, int _pageIndex, int _itemCount);

private slots:
	void addItemsFromDatabase(const QList<SongStruct> &songs);

private:
	void addAction();
	int getColumnOffset(int _curIndex);
	int getRowOffset(int _curIndex);

private:
	QList<SongItem*> itemList;
	ItemsManager *itemsManager;
	QString defaultItemsSQLStr;
	const int itemCount;
	const int preparePageNum;
	const int columnNum;
	const int rowNum;
	int nextPageIndex;
	float nextPageX;
	float lastPageX;
	bool isPrepareble;
	QRectF itemRect;
	int maxPage;

	PreviewMaskWidget *previewWidget;
	SqlitReadThread songSqlitReader;
};

#endif
