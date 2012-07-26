#ifndef STARLISTTEMPLATE_H_
#define STARLISTTEMPLATE_H_
#include "Template.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DbUtil.h"

class StarListTemplate : public Template {
	Q_OBJECT;
private:
	static int const _ITEMCOUNT = 10;
protected:
	QList<SingerStruct> _singerList;
	QString _queryStr;
public:
	StarListTemplate();
	virtual void DisplayData();
	void SetItemData(const QList<SingerStruct>& singerList);
private:
	void _setupSignalConnection();
public slots:
	virtual void ItemClick();
};
#endif

