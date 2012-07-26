#ifndef ALLSCREEN_H_
#define ALLSCREEN_H_
//#include "Template.h"
#include "SongListTemplate.h"
#include <QList>
#include <QString>
#include "../../baselib/headers/DataStruct.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../sqlite/DbUtil.h"
#include <QWidget>


class SongList : public SongListTemplate{
	Q_OBJECT;
private:
	static int const _ITEMCOUNT = 8;
protected:
	QList<SongStruct> _songList;
	QString _queryStr;
public:
	SongList(const QString& queryStr = "SELECT a.*,(SELECT COUNT(*) FROM OrderList WHERE a.songId=OrderList.songId) AS BeOrdered FROM song AS a ORDER BY a.songId DESC");
	virtual void DisplayData();
	void SetItemData(const QList<SongStruct>& songList);
private:
	void _setupSignalConnection();
public slots:
	virtual void ItemClick();
};
#endif /* ALLSCREEN_H_ */
