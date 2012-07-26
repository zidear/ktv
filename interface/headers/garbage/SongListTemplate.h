#ifndef SONGLISTTEMPLATE_H_
#define SONGLISTTEMPLATE_H_
#include "Template.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DbUtil.h"


class SongListTemplate : public Template{
	Q_OBJECT;
private:
	static int const _ITEMCOUNT = 5;
protected:
	QList<SongStruct> _songList;
	QString _queryStr;
public:
	SongListTemplate();
	virtual void DisplayData();
	void SetItemData(const QList<SongStruct>& songList);
private:
	void _setupSignalConnection();
public slots:
	virtual void ItemClick();
};
#endif
