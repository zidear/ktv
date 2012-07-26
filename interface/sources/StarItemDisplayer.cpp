#include <QWidget>

#include "StarItemDisplayer.h"
#include "SceneParameter.h"
#include "../../baselib/sources/KTVButton.h"
#include "../../baselib/sources/PageLabel.h"
#include "../KtvScreenController.h"
#include "SongItemDisplayer.h"

const static QString TEXT_SEPERATOR = " > ";

const static QString STAR_KIND_FILT_STR = "SELECT * FROM Singer WHERE singerCategory='%1' ORDER BY singerId DESC";
const static QString SPELL_FILT_STR = "SELECT * FROM Singer WHERE pinyin LIKE '%1' ORDER BY singerId DESC";;
const static QString STAR_QUERY_STR = "SELECT * FROM Singer ORDER BY singerId DESC";

StarItemDisplayer::StarItemDisplayer(SongItemDisplayer *_songItemDisPlayer, QWidget *_parent
									 , StarItemSceneParameter *_starSceneParam) 
: kindFilterWidget(STAR_KIND_FILT_STR, this, _parent), spellFilterWidget(SPELL_FILT_STR, this, _parent)
, songItemDisPlayer(_songItemDisPlayer), starSceneParam(_starSceneParam), ItemDisplayer(_starSceneParam, _parent)
{
	setUpBottomWidgetAndConnection();
	starSceneParam->setDefaultItemsSQLOfScene(STAR_QUERY_STR);
}

StarItemDisplayer::~StarItemDisplayer()
{
	delete starSceneParam;
	delete spellButton;
	delete handWriteButton;
	delete numFilterButton;
}

void StarItemDisplayer::setPrivateSignalConnection()
{
	connect(starSceneParam, SIGNAL(songOfStarDisplay(int)), this, SLOT(displaySongOfStar(int)));
	/*connect(starKindFilterButton, SIGNAL(click()), &kindFilterWidget, SLOT(show()));*/
	connect(spellButton, SIGNAL(click()), &spellFilterWidget, SLOT(show()));
	connect(starSceneParam, SIGNAL(changePagesCount(int)), pageLabel, SLOT(setPageNum(int)));
}

void StarItemDisplayer::displaySongOfStar(int _starIndex)
{
	songItemDisPlayer->displaySongOfStar(_starIndex);
	KtvScreenController::GetController()->Forward(songItemDisPlayer);
}

void StarItemDisplayer::addFilterButtons()
{
	bottomLayout.addWidget(spellButton);
	bottomLayout.addWidget(handWriteButton);
	bottomLayout.addWidget(numFilterButton);
	bottomLayout.addWidget(starKindFilterButton);
}

void StarItemDisplayer::createPrivateFilterButton()
{
	spellButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/spell.png", 0);
	handWriteButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/handwrite.png", 0);
	numFilterButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/wordcount.png", 0);
	starKindFilterButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/starkind.png", 0);
}


