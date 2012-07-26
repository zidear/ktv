#include <QWidget>

#include "SongItemDisplayer.h"
#include "SceneParameter.h"
#include "../../baselib/sources/KTVButton.h"
#include "../../baselib/sources/PageLabel.h"
#include "../KtvScreenController.h"

const static QString SONG_WORDS_FILT_STR = "SELECT a.*,(SELECT COUNT(*) FROM OrderList WHERE a.songId=OrderList.songId) AS BeOrdered FROM Song AS a WHERE a.nameCount = %1";
const static QString SPELL_FILT_STR = "SELECT a.*,(SELECT COUNT(*) FROM OrderList WHERE a.songId=OrderList.songId) AS BeOrdered FROM Song AS a WHERE a.pinyin LIKE '%1%'";
const static QString LANGUAGE_FILT_STR = "SELECT a.*,(SELECT COUNT(*) FROM OrderList WHERE a.songId=OrderList.songId) AS BeOrdered FROM Song AS a WHERE a.songLanguage = '%1'";

SongItemDisplayer::SongItemDisplayer(QWidget *_parent, SongItemSceneParameter *_songSceneParam) 
: wordsFilterWidget(SONG_WORDS_FILT_STR, this, _parent),
  spellFilterWidget(SPELL_FILT_STR, this, _parent), 
  languageFilterWidget(LANGUAGE_FILT_STR, this, _parent),
  previewMaskWidget(_parent), songSceneParam(_songSceneParam),
  ItemDisplayer(_songSceneParam, _parent)
{
	setUpBottomWidgetAndConnection();
	
	songSceneParam->setPreview(&previewMaskWidget);
	songSceneParam->setDefaultItemsSQLOfScene("SELECT * FROM Song");
}

SongItemDisplayer::~SongItemDisplayer()
{
	delete languageButton;
	delete songSceneParam;
	delete spellButton;
	delete handWriteButton;
	delete numFilterButton;
}

void SongItemDisplayer::displaySongOfStar(int _starIndex)
{
	QString queryStr = "SELECT a.*,b.singerName FROM Song AS a, Singer AS b where a.singerId=%1 and b.singerId=%1 ORDER BY a.songId DESC";
	queryStr = queryStr.arg(_starIndex);

	songSceneParam->setDefaultItemsSQLOfScene(queryStr);
	topwidget.forwardPath(tr("∏Ë–«µ„∏Ë"));
}

void SongItemDisplayer::addFilterButtons()
{
	bottomLayout.addWidget(spellButton);
	bottomLayout.addWidget(handWriteButton);
	bottomLayout.addWidget(numFilterButton);
	bottomLayout.addWidget(languageButton);
}

void SongItemDisplayer::createPrivateFilterButton()
{
	languageButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/langage.png", this);
	spellButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/spell.png", this);
	handWriteButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/handwrite.png", this);
	numFilterButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/wordcount.png", this);
}

void SongItemDisplayer::setPrivateSignalConnection()
{
	connect(numFilterButton, SIGNAL(click()), &wordsFilterWidget, SLOT(show()));
	connect(spellButton, SIGNAL(click()), &spellFilterWidget, SLOT(show()));
	connect(languageButton, SIGNAL(click()), &languageFilterWidget, SLOT(show()));
	connect(songSceneParam, SIGNAL(changePagesCount(int)), pageLabel, SLOT(setPageNum(int)));
}


