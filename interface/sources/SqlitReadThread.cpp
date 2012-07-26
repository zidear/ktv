#include <QList>
#include "SqlitReadThread.h"
#include "../../sqlite/DB.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DbUtil.h"

SqlitReadThread::SqlitReadThread()
	: QThread()
{

}

SqlitReadThread::~SqlitReadThread()
{

}

void SqlitReadThread::setSQLQueryStr(const QString &_SQLStr)
{
	SQLStr = _SQLStr;
}

void SqlitReadThread::setPageIndex(int _pageIndex)
{
	pageIndex = _pageIndex;
}

void SqlitReadThread::setItemsOfOnePage(int _itemsOfOnePage)
{
	itemsOfOnePage = _itemsOfOnePage;
}

void SqlitReadThread::run()
{
	emit getSongs(DbUtil::GetSong_Page(SQLStr, pageIndex, itemsOfOnePage));
}

