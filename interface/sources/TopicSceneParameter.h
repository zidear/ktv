#ifndef TOPIC_SCENE_PARAMETER_H
#define TOPIC_SCENE_PARAMETER_H

#include "SceneParameter.h"
#include "../sources/ButtonManager.h"

class SongItemDisplayer;

struct TopicSceneParameter : public SceneParameter
{
	Q_OBJECT

public:
	TopicSceneParameter(SongItemDisplayer *_itemDisplayer, QWidget *_parent);
	~TopicSceneParameter();

private:
	void displayAllItems();
	void addAction();
	void displayTopic(const QString &_value);

private slots:
	void displayDiscoTopic();
	void displayChildTopic();
	void displayResolutionTopic();
	void displayChorusTopic();
	void displayFriendDanceTopic();
	void displayPekingOperaTopic();
	void displayPopTopic();
	void displayJoyousTopic();
	void displayOperaTopic();
	void displayFolkTopic();


private:
	ButtonManager manager;
	SongItemDisplayer *songItemDisplayer;
	QString sqlStr;
};

#endif
