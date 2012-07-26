#ifndef TOP_SCENE_PARAMETER_H
#define TOP_SCENE_PARAMETER_H

#include "SceneParameter.h"
#include "../sources/ButtonManager.h"

class SongItemDisplayer;

struct TopSceneParameter : public SceneParameter
{
	Q_OBJECT

public:
	TopSceneParameter(SongItemDisplayer *_itemDisplayer, QWidget *_parent);
	~TopSceneParameter();

private:
	void displayAllItems();
	void addAction();
	void displayTop(const QString &_value);
	void displayLanguageTop(const QString &_value);

private slots:
	void displayAllTop();
	void displayCantoneseTop();

	void displayNewSongTop();
	void displayTaiwaneseTop();
	void displayChineseTop();


private:
	ButtonManager manager;
	SongItemDisplayer *songItemDisplayer;
};

#endif
