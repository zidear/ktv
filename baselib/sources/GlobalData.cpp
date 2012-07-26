#include "../headers/GlobalData.h"
#include <QObject>

int GlobalData::CurrentUserId = 0;
/********************************************************
 * image for template
 */
 #if 0
QImage GlobalData::TemplateImage1 = QImage(GlobalData::ImagePrefix + "Common/Template1.png");
QImage GlobalData::TemplateImage2 = QImage(GlobalData::ImagePrefix + "Common/Template2.png");
QImage GlobalData::TemplateImage3 = QImage(GlobalData::ImagePrefix + "Common/Template3.png");
#endif
/******************************************************************/
QString GlobalData::CharacterFont = "Microsoft YaHei"/*"Times"*/;
QString GlobalData::NumberFont = "ARIAL";

/*********************************************************
 * for song list template item text
 */
QColor GlobalData::SongItemTextColor = Qt::green;
int GlobalData::SongItemTextSize = 14;
int GlobalData::SongItemTextPosition_X = 130;
int GlobalData::SongItemTextPosition_Y = 38;

/*********************************************************
 * for star list template item text
 */
QColor GlobalData::SingerItemTextColor = Qt::green;
int GlobalData::SingerItemTextSize = 10;
int GlobalData::SingerItemTextPosition_X = 10;
int GlobalData::SingerItemTextPosition_Y = 155;
int GlobalData::SingerItemPicturePosition_X = 2;
int GlobalData::SingerItemPicturePosition_Y = 2;
/*********************************************************
 * for page number
 */
QColor GlobalData::PageNumberColor = Qt::green;
int GlobalData::PageNumberSize = 20;
int GlobalData::PageNumberLeftPosition_X = 60;
int GlobalData::PageNumberLeftPosition_Y = 29;
int GlobalData::PageNumberRightPosition_X = 45;
int GlobalData::PageNumberRightPosition_Y = 29;


QString GlobalData::getSpellButtonName()
{
	return "A-Z";
}

QString GlobalData::getNumButtonName()
{
	return QObject::tr("×ÖÊý");
}

QString GlobalData::getHandWriteButtonName()
{
	return QObject::tr("ÊÖÐ´");
}

QString GlobalData::getLanguageButtonName()
{
	return QObject::tr("ÓïÑÔ");
}


