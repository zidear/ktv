#ifndef DB_H_
#define DB_H_
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QString>
#include <QVariant>
#include <QSqlRecord>

#define DB_TABLE_SONG "Song"
#define DB_TABLE_SINGER "Singer"

// TABLE Song 的列
#define DB_COLUMN_SONG_ID "songId"
#define DB_COLUMN_SONG_NAME "songName"
#define DB_COLUMN_SONG_PATH "songPath"
#define DB_COLUMN_SONG_CATEGORY "songCategory"
#define DB_COLUMN_SONG_LANGUAGE "songLanguage"
#define DB_COLUMN_SONG_PLAY_COUNT "songPlayCount"
#define DB_COLUMN_SONG_REG_TIME "songRegTime"
#define DB_COLUMN_PINYIN "pinyin"
#define DB_COLUMN_NAME_COUNT "nameCount"
#define DB_COLUMN_ORIGINAL_VOLUMN "OriginalVolume"
#define DB_COLUMN_CLASS "class"
#define DB_COLUMN_NEWSONG "newsong"
#define DB_COLUMN_CHANNEL "channel"
#define DB_COLUMN_VOCAL_VOLUMN "VocalVolume"
#define DB_COLUMN_ERROR "error"

// TABLE Singer 的列
#define DB_COLUMN_SINGER_ID "singerId"
#define DB_COLUMN_SINGER_NAME "singerName"
#define DB_COLUMN_SINGER_CATEGORY "singerCategory"
#define DB_COLUMN_SINGER_GENDER "singerGender"
#define DB_COLUMN_SINGER_PIC "singerPic"


class DB{
protected:
	QString _dbName;
	QString _driverName;
	QSqlDatabase _db;
	QSqlQuery _query;
public:
	DB();
	DB(const QString& _dbfile);
	void SetQueryText(const QString& queryString);
	void BindParameter(const QString& placeholder,const QVariant& val, QSql::ParamType paramType = QSql::In);
	void BindParameter(int pos,const QVariant& val,QSql::ParamType paramType = QSql::In);
	int ExecuteNoQuery();
	QVariant LastInsertId()const;
	QSqlQuery GetRecords() const;
	QVariant ExecuteScalar();
	bool Open();

private:
	void Init();
};
#endif /* DB_H_ */
