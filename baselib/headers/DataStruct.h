#ifndef SONGSTRUCT_H_
#define SONGSTRUCT_H_
#include <QString>
#include <QMetaType>

struct SelectedSong
{
	QString singerName;
	QString songPath;
	QString songName;
	int orderId;
	int isFinished;
	int priority;
};

class SongStruct{

public:
	QString Name;
	int SongId;
	QString SongPath;
	QString SongImagePath;
	QString Category;
	int SingerId;
	QString LanguageCategory;
	int PlayCount;
	int OrderId;
	int BeOrdered;
	int Finished;
	int Priority;
	int nameCount;
	QString SingerName;

public:
	SongStruct() : Name(""), SongPath(""), SingerName(""), LanguageCategory("")
		, SongImagePath(""), Category(""), SingerId(-1), SongId(-1)
	{}
	SongStruct(int songId,const QString& name){
		this->Name = name;
		this->SongId = songId;
	}
};

class SingerStruct{
public:
	QString Name;
	QString PicturePath;
	QString FilePath;
	int SingerId;
	SingerStruct() : Name(""), PicturePath(""), FilePath(""), SingerId(-1)
	{}
	SingerStruct(int singerId,const QString& name,const QString& picturePath){
		this->SingerId = singerId;
		this->Name = name;
		this->PicturePath = picturePath;
	}
};

Q_DECLARE_METATYPE(SongStruct);

#endif /* SONGSTRUCT_H_ */
