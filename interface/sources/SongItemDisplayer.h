#ifndef _SONG_ITEM_DISPLAYER_H_
#define _SONG_ITEM_DISPLAYER_H_

#include "SongItemSceneParameter.h"
#include "ItemDisplayer.h"
#include "WordsFilterMaskWidget.h"
#include "SpellFilterMaskWidget.h"
#include "LanugageFilterMaskWidget.h"
#include "PreviewMaskWidget.h"

class KTVButton;

class SongItemDisplayer : public ItemDisplayer {
	Q_OBJECT

public:
	SongItemDisplayer(QWidget *_parent, SongItemSceneParameter *_songSceneParam = new SongItemSceneParameter());
	~SongItemDisplayer();

private:
	void addFilterButtons();
	void createPrivateFilterButton();
	void setPrivateSignalConnection();

public slots:
	void displaySongOfStar(int _starIndex);

private:
	SongItemSceneParameter *songSceneParam;
	KTVButton *languageButton;
	KTVButton *spellButton;
	KTVButton *handWriteButton;
	KTVButton *numFilterButton;
	QMap<QString, QString> buttonNameToSQLStrMap;

	WordsFilterMaskWidget wordsFilterWidget;
	SpellFilterMaskWidget spellFilterWidget;
	LanugageFilterMaskWidget languageFilterWidget;
	PreviewMaskWidget previewMaskWidget;
};
#endif

