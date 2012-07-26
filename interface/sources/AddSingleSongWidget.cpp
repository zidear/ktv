#include "AddSingleSongWidget.h"

#include <QFileDialog>
#include <QMessageBox>
#include <QtCore>
#include <sstream>
#include "ScrollText.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DB.h"
//d:\project\ktv\interface\sources\AddSingleSongWidget.cpp

#define SONG_DIR "song"
#define SONG_PHOTO_DIR "song_photo"
#define SINGER_PHOTO_DIR "singer_photo"

#include <cctype>
#include <algorithm>

using std::stringstream;



AddSingleSongWidget::AddSingleSongWidget(QWidget *parent)
	: QDialog(parent)
{
	ui.setupUi(this);

	connect(ui.fileChooser, SIGNAL(clicked()), this, SLOT(setOpenFileName()));
	connect(ui.fileChooser_2, SIGNAL(clicked()), this, SLOT(setOpenDBFileName()));	
	connect(ui.scrollTextConfirmButton, SIGNAL(clicked()), this, SLOT(changeScrollText()));
	connect(ui.scrollTextDeleteButton, SIGNAL(clicked()), this, SLOT(deleteScrollText()));
	connect(ui.confirmButton, SIGNAL(clicked()), this, SLOT(addSong()));
	connect(ui.pushButton, SIGNAL(clicked()), this, SLOT(addManySongs()));
	connect(ui.lineEdit, SIGNAL(textChanged(const QString&)), this, SLOT(updateSongNamePinyin(const QString&)));	

	initComboBoxes();
}

AddSingleSongWidget::~AddSingleSongWidget()
{

}

void AddSingleSongWidget::setOpenFileName()
{
	QFileDialog::Options options;
		options |= QFileDialog::HideNameFilterDetails;
	QString selectedFilter;
	QString fileName = QFileDialog::getOpenFileName(this,
		tr("QFileDialog::getOpenFileName()"),
		ui.openFileNameLabel->text(),
		tr("All Files (*);;Text Files (*.txt)"),
		&selectedFilter,
		options);
	if (!fileName.isEmpty())
		ui.openFileNameLabel->setText(fileName);
}

void AddSingleSongWidget::setOpenDBFileName()
{
	QFileDialog::Options options;
	options |= QFileDialog::HideNameFilterDetails;
	QString selectedFilter;
	QString fileName = QFileDialog::getOpenFileName(this,
		tr("QFileDialog::getOpenFileName()"),
		ui.lineEdit_5->text(),
		tr("All Files (*);;Text Files (*.txt)"),
		&selectedFilter,
		options);
	if (!fileName.isEmpty())
		ui.lineEdit_5->setText(fileName);
}

void AddSingleSongWidget::changeScrollText()
{
	ScrollText::Instance()->setText(ui.scrollTextContent->text());
}

void AddSingleSongWidget::deleteScrollText()
{
	QString text = ui.scrollTextContent->text();
	text = text.left(text.length() - 1);
	ui.scrollTextContent->setText(text);
}

void AddSingleSongWidget::addSong()
{
	// 1. �ӽ���ȡ����
	bool result = true;
	result = getUIData();
	if (result)
	{
		addSingleSong();
	}
	
	promptDialog(m_errorInfo);
}

void AddSingleSongWidget::updateSongNamePinyin(const QString& _qstr)
{
	QString abbr = getFirstLetterAbbreviation(_qstr);
	ui.lineEdit_2->setText(abbr);
	ui.lineEdit_3->setText(QString::number(abbr.size(), 10));
}

void AddSingleSongWidget::addSingleSong()
{
	bool result = true;

	// TODO: У����ֶ��Ƿ�һ������
	result = checkFieldsValid();
	if (!result)
	{
		return;
	}

	// 3. �жϸ����Ƿ��Ѵ���. �������򴴽��¸���
	if (!existSinger(m_singerName, m_singerRegion, m_singerGender))
	{
		result = createSinger(m_singerName, m_singerRegion, m_singerGender);
		if (!result)
		{
			m_errorInfo = "�޷�����������Ϣ���Ӹ�ʧ��!";
			m_errorInfo += "��������: " + m_singerName + "��";
			return;
		}
	}

	// 4. ��ȡ������ID
	int singerId = 0;
	result = getSingerId(m_singerName, m_singerRegion, m_singerGender, singerId);
	if (!result)
	{
		m_errorInfo = "��ȡ���ֱ��ʧ�ܡ�";
		m_errorInfo += "��������: " + m_singerName + "��";
		return;
	}

	// 5. �жϸ����Ƿ��Ѵ���
	if (existSong(m_songName, m_songLanguage, singerId))
	{
		stringstream ss;
		ss << "����\"" << m_songName << "\"�Ѵ��ڣ�����Ҫ���ӡ��������Ҫ����ԭ�и���������ɾ��ϵͳ�е�ԭ�и������ٽ�����ӡ�";
		m_errorInfo = ss.str();
		return;
	}

	// 6. �����ݿ���Ϊ������������	
	SongStruct song;
	song.Name = m_songName.c_str();

	const string fileExtName = getFileExtName(m_fileName.toStdString());
	song.SongPath = fileExtName.c_str();

	song.SongImagePath = ""; // TODO
	song.Category = m_songCategory.c_str();
	song.SingerId = singerId;
	song.LanguageCategory = m_songLanguage.c_str();
	song.PlayCount = 0;
	song.nameCount = m_songNameCount;

	result = createSong(song);
	if (!result)
	{
		m_errorInfo = "�����ݿ���Ϊ����\"" + m_songName + "\"��������ʧ�ܡ�";
		return;
	}

	// 7. �������ID
	SongStruct songDetail;
	result = querySongStruct(m_songName, m_songLanguage, singerId, songDetail);
	if (!result)
	{
		m_errorInfo = "�޷�Ϊ����\"" + m_songName + "\"���ɱ�ţ��Ӹ�ʧ�ܣ�";
		return;
	}
	const int songId = songDetail.SongId;

	// 8. ���ļ�
	QFile sourceFile(m_fileName);
	std::stringstream desFileName;
	desFileName << songId << "." << fileExtName;
	QString QDesFile(desFileName.str().c_str());
	result = sourceFile.copy(QDesFile);
	if (!result)
	{
		m_errorInfo = "�����ļ�\"" + m_fileName.toStdString() + "\"ʧ�ܡ�ԭ��";
		m_errorInfo += sourceFile.errorString().toStdString();
		return;
	}	

	// �ɹ�����
	m_errorInfo = "��ϲ: �Ӹ�ɹ�!";
	return;
}

// ���������ݺϷ���
bool AddSingleSongWidget::checkFieldsValid()
{
	if (m_fileName.isEmpty())
	{
		m_errorInfo = "��ѡ������ļ�!";
		return false;
	}

	if (m_songName.empty())
	{
		m_errorInfo = "�����������!";
		return false;
	}

	if (m_songNamePinyin.empty())
	{
		m_errorInfo = "���������ƴ����";
		return false;
	}

	if (0 == m_songNameCount)
	{		
		m_errorInfo = "������Ϸ��ĸ�����������ʾ��ֻ��Ϊ���֡�";
		return false;
	}

	if (m_singerName.empty())
	{
		m_errorInfo = "�������������!";
		return false;
	}

	if (m_songCategory.empty())
	{
		m_songCategory = "����";
	}

	if (m_songLanguage.empty())
	{
		m_songLanguage = "��";
	}

	if (m_songClass.empty())
	{
		m_songClass = "KTV";
	}

	return true;
}


// ��ȡǰ̨������Ϣ
bool AddSingleSongWidget::getUIData()
{
	m_fileName = ui.openFileNameLabel->text();
	m_songName = ui.lineEdit->text().toStdString();
	m_songNamePinyin = ui.lineEdit_2->text().toStdString();
	m_songNameCount = ui.lineEdit_3->text().toInt();
	m_songCategory = ui.comboBox_3->itemText(ui.comboBox_3->currentIndex()).toStdString();
	m_songLanguage = ui.comboBox_2->itemText(ui.comboBox_2->currentIndex()).toStdString();
	m_originalVolumn = ui.comboBox->itemText(ui.comboBox->currentIndex()).toInt();
	m_vocalVolumn = ui.comboBox_5->itemText(ui.comboBox_5->currentIndex()).toInt();
	m_songClass = ui.comboBox_4->itemText(ui.comboBox_4->currentIndex()).toStdString();
	m_channel = ui.comboBox_6->itemText(ui.comboBox_6->currentIndex()).toInt();

	m_singerName = ui.lineEdit_4->text().toStdString();
	m_singerGender = ui.comboBox_7->itemText(ui.comboBox_7->currentIndex()).toStdString();	
	m_singerRegion = ui.comboBox_8->itemText(ui.comboBox_8->currentIndex()).toStdString();

	return true;
}

void AddSingleSongWidget::promptDialog(const string _info)
{
	QMessageBox mb( "��ʾ",
		m_errorInfo.c_str(),
		QMessageBox::Information,
		QMessageBox::Yes | QMessageBox::Default,
		QMessageBox::No,
		QMessageBox::Cancel | QMessageBox::Escape );
	mb.exec();

}


bool AddSingleSongWidget::existSinger(const string& _name, const string& _region, const string& _gender)
{
	DB db;
	stringstream sql;
	sql << "SELECT singerId FROM Singer WHERE singerName = '" << _name 
		<< "' AND singerCategory = '" << _region 
		<< "' AND singerGender = '" << _gender << "';";

	db.SetQueryText(sql.str().c_str());

	if(!db.GetRecords().exec())
	{
		m_errorInfo = "database error.";
		return false;
	}

	if (!db.GetRecords().next())
	{
		return false;
	}

	return true;
}

bool AddSingleSongWidget::createSinger(const string& _name, const string& _region, const string& _gender)
{
	// REPLACE INTO Singer (singerName, singerCategory, singerGender, singerPic, pinyin) VALUES ('�˵�', '��̨Ů��', 'Ů', 'dd.jpg', 'dd');
	DB db;
	db.SetQueryText("REPLACE INTO Singer(singerName, singerCategory, singerGender, singerPic, pinyin) VALUES (:singerName, :singerCategory, :singerGender, :singerPic, :pinyin)");
	db.BindParameter(":singerName", _name.c_str());
	db.BindParameter(":singerCategory", _region.c_str());
	db.BindParameter(":singerGender", _gender.c_str());
	db.BindParameter(":singerPic", "znl.jpg"); // TODO:
	db.BindParameter(":pinyin", getFirstLetterAbbreviation(_name.c_str()));
	return (-1 != db.ExecuteNoQuery());
}

bool AddSingleSongWidget::getSingerId(const string& _name, const string& _region, const string& _gender, int& _id)
{
	DB db;
	stringstream sql;
	sql << "SELECT singerId FROM Singer WHERE singerName = '" << _name 
		<< "' AND singerCategory = '" << _region 
		<< "' AND singerGender = '" << _gender << "';";

	db.SetQueryText(sql.str().c_str());

	if(!db.GetRecords().exec())
	{
		m_errorInfo = "database error.";
		return false;
	}

	if (!db.GetRecords().next())
	{
		return false;
	}

	const int fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_SINGER_ID);
	_id = db.GetRecords().value(fieldNo).toInt();
	return true;
}

bool AddSingleSongWidget::existSong(const string& _name, const string& _language, const int _singerId)
{
	DB db;
	stringstream sql;
	sql << "SELECT songId FROM Song WHERE songName = '" << _name 
		<< "' AND songLanguage = '" << _language 
		<< "' AND singerId = " << _singerId << ";";

	qDebug() << sql.str().c_str();

	db.SetQueryText(sql.str().c_str());

	if(!db.GetRecords().exec())
	{
		m_errorInfo = "database error.";
		return false;
	}

	if (!db.GetRecords().next())
	{
		return false;
	}

	return true;
}

bool AddSingleSongWidget::createSong(const SongStruct& _song)
{
	// REPLACE INTO Song (songName, songPath, songCategory, singerId, songLanguage, songPlayCount, songRegTime, pinyin, nameCount, OriginalVolume, class, newsong, channel, VocalVolume, error) VALUES('С�ǹ���', '.', 'DISCO', 21, '��', 100, '', 'xcgs', 4, 50, 'KTV', 1, 0, 50, 0);
	DB db;
	db.SetQueryText("REPLACE INTO Song (songName, songPath, songCategory, singerId, songLanguage, songPlayCount, songRegTime, pinyin, nameCount, OriginalVolume, class, newsong, channel, VocalVolume, error) VALUES(:songName, :songPath, :songCategory, :singerId, :songLanguage, :songPlayCount, :songRegTime, :pinyin, :nameCount, :OriginalVolume, :class, :newsong, :channel, :VocalVolume, :error);");
	db.BindParameter(":songName", _song.Name);
	db.BindParameter(":songPath", _song.SongPath);
	db.BindParameter(":songCategory", _song.Category);
	db.BindParameter(":singerId", _song.SingerId);
	db.BindParameter(":songLanguage", _song.LanguageCategory);
	db.BindParameter(":songPlayCount", 0);
	db.BindParameter(":songRegTime", "2011-9-4"); // TODO:
	db.BindParameter(":pinyin", m_songNamePinyin.c_str());
	db.BindParameter(":nameCount", _song.nameCount);
	db.BindParameter(":OriginalVolume", m_originalVolumn);
	db.BindParameter(":class", m_songClass.c_str());
	db.BindParameter(":newsong", 1);
	db.BindParameter(":channel", m_channel);
	db.BindParameter(":VocalVolume", m_vocalVolumn);
	db.BindParameter(":error", 0);

	const int result = db.ExecuteNoQuery();
	return (-1 != result);
}

bool AddSingleSongWidget::querySongStruct(const string& _name, const string& _language, const int _singerId, SongStruct& songDetail)
{
	DB db;
	stringstream sql;
	sql << "SELECT * FROM Song WHERE songName = '" << _name 
		<< "' AND songLanguage = '" << _language 
		<< "' AND singerId = " << _singerId << ";";

	db.SetQueryText(sql.str().c_str());

	if(!db.GetRecords().exec())
	{
		m_errorInfo = "database error.";
		return false;
	}

	if (!db.GetRecords().next())
	{
		return false;
	}

	songDetail.Name = _name.c_str();

	int fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_SONG_ID);
	songDetail.SongId = db.GetRecords().value(fieldNo).toInt();

	fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_SONG_PATH);
	songDetail.SongPath = db.GetRecords().value(fieldNo).toChar();

	songDetail.SongImagePath = ""; //  TODO:

	fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_SONG_CATEGORY);
	songDetail.Category = db.GetRecords().value(fieldNo).toChar();

	songDetail.SingerId = _singerId;

	songDetail.LanguageCategory = _language.c_str();

	fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_SONG_PLAY_COUNT);
	songDetail.PlayCount = db.GetRecords().value(fieldNo).toInt();

	fieldNo = db.GetRecords().record().indexOf(DB_COLUMN_NAME_COUNT);
	songDetail.nameCount = db.GetRecords().value(fieldNo).toInt();

	return true;
}

void AddSingleSongWidget::initComboBoxes() 
{
	ui.comboBox->addItem("50");
	ui.comboBox->addItem("60");

	// �鳪����
	ui.comboBox_5->addItem("50");
	ui.comboBox_5->addItem("60");

	// �鳪����
	ui.comboBox_6->addItem("������"); // TODO: Ҫת������
	ui.comboBox_6->addItem("������");

	// ����
	ui.comboBox_2->addItem("����");
	ui.comboBox_2->addItem("����");
	ui.comboBox_2->addItem("Ӣ��");

	// �ļ�����
	ui.comboBox_3->addItem("�¸�");
	ui.comboBox_3->addItem("��÷Ϸ");

	// ��������
	ui.comboBox_4->addItem("MTV");
	ui.comboBox_4->addItem("�ݳ���");
	ui.comboBox_4->addItem("��Ӱ");

	ui.comboBox_7->addItem("��");
	ui.comboBox_7->addItem("Ů");

	// ����
	ui.comboBox_8->addItem("��½");
	ui.comboBox_8->addItem("��̨");
	ui.comboBox_8->addItem("���");
}

// ���ļ����н�������չ���������磺 c:\hello.txt -> txt
string AddSingleSongWidget::getFileExtName(const string& _fileFullName)
{
	int pos = _fileFullName.find_last_of(".");
	if (-1 == pos)
	{
		return "";
	}

	string fileExtName = _fileFullName.substr(pos + 1, _fileFullName.size());
	return fileExtName;
}

QString AddSingleSongWidget::getFirstLetterAbbreviation(const QString& _str)const
{
	DB db;
	QString pinyin = "";
	for(int j=0;j<_str.length();j++){
		QChar word = _str[j];
		db.SetQueryText("SELECT pinyin FROM Dic WHERE word=:word");
		db.BindParameter(":word",word);
		if(!db.GetRecords().exec()) throw "exec in UpdateSongLibrary error.";
		if(db.GetRecords().next()){
			pinyin += db.GetRecords().value(0).toString();
		}
	}

	string sst = pinyin.toStdString();
	std::transform(sst.begin(), sst.end(), sst.begin(), toupper);

	return sst.c_str();
}

void AddSingleSongWidget::addManySongs()
{
	QString dbfile = ui.lineEdit_5->text();
	//QString _dbfile = "D:/project/ktv/data/database/KTV_DB.db";
	if (dbfile.isEmpty())
	{
		m_errorInfo = "��ѡ�����ݿ��ļ�!";
		promptDialog(m_errorInfo);
		return;
	}


	DB sourceDb(dbfile);

	sourceDb.SetQueryText("select * from Song left outer join Singer on Song.singerId=Singer.singerId;");

	if(!sourceDb.GetRecords().exec())
	{
		m_errorInfo = "database error.";
		promptDialog(m_errorInfo);
		return;
	}

	string strErr;

	while (sourceDb.GetRecords().next())
	{
		m_fileName = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SONG_PATH)).toString().toStdString().c_str();
		m_fileName += ".rmvb"; // TODO:

		m_songName = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SONG_NAME)).toString().toStdString();
		m_songNamePinyin = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_PINYIN)).toString().toStdString();
		m_songNameCount = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_NAME_COUNT)).toInt();
		m_songCategory = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SONG_CATEGORY)).toString().toStdString();
		m_songLanguage = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SONG_LANGUAGE)).toString().toStdString();
		m_originalVolumn = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_ORIGINAL_VOLUMN)).toInt();
		m_vocalVolumn = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_VOCAL_VOLUMN)).toInt();
		m_songClass = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_CLASS)).toString().toStdString();
		m_channel = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_CHANNEL)).toInt();
		m_singerName = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SINGER_NAME)).toString().toStdString();
		m_singerGender = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SINGER_GENDER)).toString().toStdString();
		m_singerRegion = sourceDb.GetRecords().value(sourceDb.GetRecords().record().indexOf(DB_COLUMN_SINGER_CATEGORY)).toString().toStdString();

		addSingleSong();
		if (!m_errorInfo.empty())
		{
			strErr += m_errorInfo + "\n\n";
		}
	}

	m_errorInfo = strErr;

	promptDialog(m_errorInfo);
	return;
}




