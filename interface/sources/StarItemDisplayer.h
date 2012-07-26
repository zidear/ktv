#ifndef _STAR_ITEM_DISPLAYER_H_
#define _STAR_ITEM_DISPLAYER_H_

#include "StarItemSceneParameter.h"

#include "ItemDisplayer.h"
#include "StarKindFilterMaskWidget.h"
#include "SpellFilterMaskWidget.h"

class SongItemDisplayer;
class KTVButton;

class StarItemDisplayer : public ItemDisplayer
{
	Q_OBJECT

public:
	StarItemDisplayer(SongItemDisplayer *_songItemDisPlayer, QWidget *_parent
		, StarItemSceneParameter *_starSceneParam = new StarItemSceneParameter);
	~StarItemDisplayer();

private:
	void setPrivateSignalConnection();
	void addFilterButtons(); 
	void createPrivateFilterButton();

public slots:
	void displaySongOfStar(int _starIndex);

private:
	StarItemSceneParameter *starSceneParam;
	SongItemDisplayer *songItemDisPlayer;

	KTVButton *spellButton;
	KTVButton *handWriteButton;
	KTVButton *numFilterButton;
	KTVButton *starKindFilterButton;

	StarKindFilterMaskWidget kindFilterWidget;
	SpellFilterMaskWidget spellFilterWidget;
};

#endif

