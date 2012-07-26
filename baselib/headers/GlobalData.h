#ifndef GLOBALDATA_H_
#define GLOBALDATA_H_
#include <QString>
#include <QColor>
#include <QImage>
#include <QObject>
#include <QString>

class GlobalData{
public:

	static int CurrentUserId;

	static QString CharacterFont;
	static QString NumberFont;
	/*****************
	 * for song list template item text
	 */
	static QColor SongItemTextColor;
	static int SongItemTextSize;
	static int SongItemTextPosition_X;
	static int SongItemTextPosition_Y;
	/*******************
	 * for star list template item text
	 */
	static QColor SingerItemTextColor;
	static int SingerItemTextSize;
	static int SingerItemTextPosition_X;
	static int SingerItemTextPosition_Y;
	static int SingerItemPicturePosition_X;
	static int SingerItemPicturePosition_Y;
	/*****************
	 * for page number
	 */
	static QColor PageNumberColor;
	static int PageNumberSize;
	static int PageNumberLeftPosition_X;
	static int PageNumberLeftPosition_Y;
	static int PageNumberRightPosition_X;
	static int PageNumberRightPosition_Y;



public:
	/*filter button name */
	static QString getSpellButtonName();
	static QString getNumButtonName();
	static QString getHandWriteButtonName();
	static QString getLanguageButtonName();
};

const static QString IMAGE_PATH_PREFIX = "image/skin2/";
const static QString SINGER_PIXTURE_PREFIXE = "data/singerpicture/";
const static QString CONFIG_PREFIX = "configure/skin2/";

#endif /* GLOBALDATA_H_ */
