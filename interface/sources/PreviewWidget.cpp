#include "PreviewWidget.h"
#include "UserInfo.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../sqlite/DbUtil.h"


const QString COLLECTION_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/collection.png";
const QString INSERT_SONG_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/insertsong.png";
const QString SONG_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/song.png";
const QString WORD_COUNT_BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/previewbackground.png";

PreviewWidget::PreviewWidget(QWidget *parent)
: songID(0), collectionButton(COLLECTION_BUTTON_IMAGE, this), songButton(SONG_BUTTON_IMAGE, this),
insertSongButton(INSERT_SONG_BUTTON_IMAGE, this), loginInMaskWidget(parent), 
KTVDialog(parent)
{
	setBackgroundImage(WORD_COUNT_BACKGROUND_IMAGE_PATH);
	insertSongButton.setPos(QPoint(137, 418));
	songButton.setPos(QPoint(246, 409));
	collectionButton.setPos(QPoint(305, 418));

	setupConnection();
}

PreviewWidget::~PreviewWidget()
{

}

void PreviewWidget::setupConnection()
{
	connect(&collectionButton, SIGNAL(click()), this, SLOT(collectSong()));
}


void PreviewWidget::collectSong()
{
	if (UserInfo::Instance()->isValid())
	{
		DbUtil::addSongToPrivateList(UserInfo::Instance()->getUserID(), songID);
		return;
	}

	loginInMaskWidget.show();
}

void PreviewWidget::setSongID(int _songID)
{
	songID =_songID;
}



