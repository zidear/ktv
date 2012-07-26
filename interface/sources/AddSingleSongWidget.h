#ifndef ADDSINGLESONGWIDGET_H
#define ADDSINGLESONGWIDGET_H

#include <QDialog>
#include "ui_AddSingleSongWidget.h"
#include <string>

using std::string;

class SongStruct;

class AddSingleSongWidget : public QDialog
{
	Q_OBJECT

public:
	AddSingleSongWidget(QWidget *parent = 0);

	void initComboBoxes();

	~AddSingleSongWidget();

protected slots:
	void setOpenFileName();
	void setOpenDBFileName();
	void changeScrollText();
	void deleteScrollText();
	void addSong();
	void addManySongs();
	void updateSongNamePinyin(const QString& _qstr);

private:
	bool existSinger(const string& _name, const string& _region, const string& _gender);
	bool createSinger(const string& _name, const string& _region, const string& _gender);
	bool getSingerId(const string& _name, const string& _region, const string& _gender, int& _id);
	bool existSong(const string& _name, const string& _language, const int _singerId);
	bool createSong(const SongStruct& _song);
	bool querySongStruct(const string& _name, const string& _language, const int _singerId, SongStruct& songDetail);

	void addSingleSong();
	void promptDialog(const string _info);

	bool getUIData();
	bool checkFieldsValid();

	string getFileExtName(const string& _fileFullName);

	// 光辉岁月 -> GHSY
	// I love you -> ILY // TODO: 暂未实现
	QString getFirstLetterAbbreviation(const QString& _str)const;

	

private:
	Ui::AddSingleSongWidgetClass ui;

	string m_errorInfo;


	QString m_fileName;
	string m_songName;
	// string m_songPath;
	string m_songNamePinyin;
	int m_songNameCount;
	string m_songCategory;
	string m_songLanguage;
	// string m_songPlayCount;
	// string m_songRegTime;

	int m_originalVolumn;
	int m_vocalVolumn;
	string m_songClass;
	// int m_newsong;
	int m_channel;
	int m_songError;


	string m_singerName;
	string m_singerGender;
	string m_singerRegion;
	// stirng m_singerPic;
	//string m_singerPinyin;

};

#endif // ADDSINGLESONGWIDGET_H
