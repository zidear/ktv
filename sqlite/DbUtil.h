#ifndef DBUTIL_H_
#define DBUTIL_H_
#include <QList>
#include <QVariant>
#include <QString>
#include <QChar>
#include <QObject>
#include <QSqlQuery>
#include "../baselib/headers/GlobalData.h"
#include "../baselib/headers/DataStruct.h"
#include "DB.h"

class PageInfo;
class DbUtil{
public:
	static QList<SongStruct> GetSong_Page(const QString& sql,int page,int pageSize = 5);
	static QList<SelectedSong> GetSelectedSong_Page();
	static QList<SingerStruct> GetSinger_Page(const QString& sql,int page,QList<QVariant> param,PageInfo* pageInfo,int pageSize = 10);
	static void AddSongToOrderList(const SongStruct& song);
	static void UpdateSongLibrary();
	static int Login(QString uid);
	static int SetPriority(int orderId);
	static int DeleteSongFromOrderList(int orderId);
	static int getSelectedSongCount();
	static PageInfo getPageInfo(const QString& _sql, int _page, int _pageSize);
	static void addSongToPrivateList(const int _userID, const int _songID);

private:
	static void RegisterUser(DB &_db, QString uid);
};

class PageInfo{
public:
	int RecordCount;
	int PageCount;
	int PageSize;
	int CurrentPage;
	bool IsFirst;
	bool IsLast;
public:
	PageInfo(){
		this->RecordCount = 0;
		this->PageCount = 0;
		this->PageSize = 0;
		this->CurrentPage = 0;
		this->IsFirst = false;
		this->IsLast = false;
	}
	void Caculate(){
		this->PageCount = this->RecordCount / this->PageSize;
		if(this->RecordCount % this->PageSize) this->PageCount += 1;
		if(this->CurrentPage <= 0){
			this->IsFirst = true;
			this->CurrentPage = 0;
		}
		if(this->CurrentPage >= this->PageCount){
			this->IsLast = true;
			this->CurrentPage = this->PageCount;
		}
	}
	int GetValidPage(){
		return this->CurrentPage;
	}
	int GetValidStartIndex(){
		return this->CurrentPage * this->PageSize;
	}
};
#endif /* DBUTIL_H_ */
