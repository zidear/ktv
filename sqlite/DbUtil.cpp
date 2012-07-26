#include "DbUtil.h"
#include <stdio.h>

PageInfo DbUtil::getPageInfo(const QString& _sql, int _page, int _pageSize)
{
	DB db;
	PageInfo pageInfo;
	db.SetQueryText(_sql);
	QString querystr = db.GetRecords().lastQuery();
	QString countstr = QString("SELECT COUNT(*) FROM ( ")+ querystr + QString(") AS countTable");
	db.SetQueryText(countstr);
	pageInfo.RecordCount = db.ExecuteScalar().toInt();
	pageInfo.PageSize = _pageSize;
	pageInfo.CurrentPage = _page;
	pageInfo.Caculate();

	return pageInfo;
}

QList<SongStruct> DbUtil::GetSong_Page(const QString& sql, int page,int pageSize){
	QString pattern("(.*)\\..*");
	QRegExp rx(pattern);
	DB db;
	QString querystr = sql + " LIMIT " + QString::number(page * pageSize) + "," + QString::number(pageSize);
	
	db.SetQueryText(querystr);
	if(!db.GetRecords().exec()) throw "exec in getsong_page error.";
	QList<SongStruct> list;
	while(db.GetRecords().next()){
		int fieldNo = db.GetRecords().record().indexOf("songId");
		int songId = db.GetRecords().value(fieldNo).toInt();
		fieldNo = db.GetRecords().record().indexOf("songName");
		QString songName = db.GetRecords().value(fieldNo).toString();
		SongStruct sstruct(songId,songName);
		fieldNo = db.GetRecords().record().indexOf("OrderId");
		if(fieldNo != -1){
			sstruct.OrderId = db.GetRecords().value(fieldNo).toInt();
		}

		fieldNo = db.GetRecords().record().indexOf("BeOrdered");
		if(fieldNo != -1){
			sstruct.BeOrdered = db.GetRecords().value(fieldNo).toInt();
		}
		else sstruct.BeOrdered = 0;

		fieldNo = db.GetRecords().record().indexOf("Finished");
		if(fieldNo != -1){
			sstruct.Finished = db.GetRecords().value(fieldNo).toInt();
		}
		else sstruct.Finished = 0;

		fieldNo = db.GetRecords().record().indexOf("Priority");
		if(fieldNo != -1){
			sstruct.Priority = db.GetRecords().value(fieldNo).toInt();
		}
		else sstruct.Priority = 0;

		fieldNo = db.GetRecords().record().indexOf("nameCount");
		sstruct.nameCount = db.GetRecords().value(fieldNo).toInt();;

		fieldNo = db.GetRecords().record().indexOf("songPath");
		sstruct.SongPath = db.GetRecords().value(fieldNo).toString();

		fieldNo = db.GetRecords().record().indexOf("singerName");
		
		if (fieldNo != -1)
		{
			sstruct.SingerName = db.GetRecords().value(fieldNo).toString();
		}
		else
		{
			sstruct.SingerName = "";
		}

		if (rx.exactMatch(sstruct.SongPath))
		{
			sstruct.SongImagePath = rx.cap(1) + ".png";
		}

		list.append(sstruct);
	}

	return list;
}

QList<SelectedSong> DbUtil::GetSelectedSong_Page()
{
	DB db;
	QString orderedSongSQLStr = 
		"SELECT a.songName,a.songPath,b.orderId,b.priority,b.finished FROM Song AS a,OrderList AS b, Singer AS c WHERE a.songId=b.songId and a.singerId=c.singerId ORDER BY b.finished DESC,b.priority DESC,b.orderId ASC";
	
	db.SetQueryText(orderedSongSQLStr);

	if(!db.GetRecords().exec()) throw "exec in getsong_page error.";
	QList<SelectedSong> list;
	SelectedSong songInfo;
	while(db.GetRecords().next()){
		songInfo.songName = db.GetRecords().value(0).toString();
		songInfo.songPath = db.GetRecords().value(1).toString();
		songInfo.orderId = db.GetRecords().value(2).toInt();
		songInfo.priority = db.GetRecords().value(3).toInt();
		songInfo.isFinished = db.GetRecords().value(4).toInt();

		list.append(songInfo);
	}
	return list;
}

QList<SingerStruct> DbUtil::GetSinger_Page(const QString& sql,int page,QList<QVariant> param,PageInfo* pageInfo,int pageSize){
	DB db;
	db.SetQueryText(sql);
	for(int i=0;i<param.size();i++){
		db.BindParameter(i,param.at(i));
	}
	QString querystr = db.GetRecords().lastQuery();

	QString countstr = QString("SELECT COUNT(*) FROM ( ")+ querystr + QString(") AS countTable");
	db.SetQueryText(countstr);
	pageInfo->RecordCount = db.ExecuteScalar().toInt();
	pageInfo->PageSize = pageSize;
	pageInfo->CurrentPage = page;
	pageInfo->Caculate();

	db.GetRecords().clear();
	querystr = querystr + " LIMIT " + QString::number(pageInfo->GetValidStartIndex()) + "," + QString::number(pageSize);
	db.SetQueryText(querystr);
	if(!db.GetRecords().exec()) throw "exec in getsong_page error.";
	QList<SingerStruct> list;
	while(db.GetRecords().next()){
		int fieldNo = db.GetRecords().record().indexOf("singerId");
		int singerId = db.GetRecords().value(fieldNo).toInt();
		fieldNo = db.GetRecords().record().indexOf("singerName");
		QString singerName = db.GetRecords().value(fieldNo).toString();
		fieldNo = db.GetRecords().record().indexOf("singerPic");
		QString singerPic = SINGER_PIXTURE_PREFIXE + db.GetRecords().value(fieldNo).toString();
		list.append(SingerStruct(singerId,singerName,singerPic));
	}

	return list;
}

void DbUtil::addSongToPrivateList(const int _userID, const int _songID)
{
	DB db;
	db.SetQueryText("REPLACE INTO PrivateSong(userId,songId) VALUES (:userId,:songId)");
	db.BindParameter(":userId", _userID);
	db.BindParameter(":songId", _songID);
	db.ExecuteNoQuery();
}

void DbUtil::AddSongToOrderList(const SongStruct& song)
{
	DB db;
	db.SetQueryText("REPLACE INTO orderList(songId) VALUES (:songId)");
	db.BindParameter(":songId",song.SongId);
	db.ExecuteNoQuery();

	db.SetQueryText("UPDATE Song Set songPlayCount=songPlayCount+1 where songId=:songId");
	db.BindParameter(":songId",song.SongId);
	db.ExecuteNoQuery();
}
void DbUtil::UpdateSongLibrary(){
	DB db;
	db.SetQueryText(QObject::trUtf8("DELETE FROM OrderList"));
	db.ExecuteNoQuery();
	db.SetQueryText(QObject::trUtf8("SELECT songName FROM Song WHERE pinyin IS NULL AND songLanguage!='英文歌曲'"));
	if(!db.GetRecords().exec()) throw "exec in UpdateSongLibrary error.";
	QList<QString> list;
	while(db.GetRecords().next()){
		list.append( db.GetRecords().value(0).toString());
	}
	for(int i=0;i<list.size();i++){
		QString str = list[i];
		QString pinyin = "";
		for(int j=0;j<str.length();j++){
			QChar word = str[j];
			db.SetQueryText("SELECT pinyin FROM Dic WHERE word=:word");
			db.BindParameter(":word",word);
			if(!db.GetRecords().exec()) throw "exec in UpdateSongLibrary error.";
			if(db.GetRecords().next()){
				pinyin += db.GetRecords().value(0).toString();
			}
		}
		if(pinyin.length() == 0) continue;
		db.SetQueryText("UPDATE Song SET pinyin=:pinyin WHERE songName=:songName");
		db.BindParameter(":pinyin",pinyin);
		db.BindParameter(":songName",str);
		db.ExecuteNoQuery();
	}
}

void DbUtil::RegisterUser(DB &_db, QString _uid)
{
	_db.SetQueryText("REPLACE INTO User(account) VALUES(:account)");
	_db.BindParameter(":account", _uid);
	_db.ExecuteNoQuery();

	_db.GetRecords().clear();
}

int DbUtil::Login(QString uid){
	DB db;

	RegisterUser(db, uid);

	db.SetQueryText("SELECT userId FROM User WHERE account=:account");
	db.BindParameter(":account",uid);
	if(!db.GetRecords().exec()) throw "exec in Login error.";
	if(db.GetRecords().next())
	{
		bool ok = false;
		int userId = db.GetRecords().value(0).toInt(&ok);
		if(ok)
		{
			return userId;
		}

		return 0;
	}

	return 0;
}
int DbUtil::SetPriority(int orderId){
	DB db;
	db.SetQueryText("UPDATE OrderList SET priority=1 WHERE orderId=:orderId");
	db.BindParameter(":orderId",orderId);
	return db.ExecuteNoQuery();
}
int DbUtil::DeleteSongFromOrderList(int orderId){
	DB db;
	db.SetQueryText("DELETE FROM OrderList WHERE orderId=:orderId");
	db.BindParameter(":orderId",orderId);
	return db.ExecuteNoQuery();
}

int DbUtil::getSelectedSongCount()
{
	DB db;
	QString countstr = QString("SELECT COUNT(*) FROM (OrderList)");
	db.SetQueryText(countstr);
	return db.ExecuteScalar().toInt();
}

