#ifndef SQLITREADTHREAD_H
#define SQLITREADTHREAD_H

#include <QThread>
#include <QList>
#include "../../baselib/headers/DataStruct.h"

class SqlitReadThread : public QThread
{
	Q_OBJECT

public:
	SqlitReadThread();
	~SqlitReadThread();

	void setSQLQueryStr(const QString &_SQLStr);
	void setPageIndex(int _pageIndex);
	void setItemsOfOnePage(int _itemsOfOnePage);

signals:
	void getSongs(const QList<SongStruct> &songs);

protected:
	void run();

private:
	QString SQLStr;
	int pageIndex;
	int itemsOfOnePage;
};

#endif // SQLITREADTHREAD_H
