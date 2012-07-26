#ifndef HOME_SCENE_PARAMETER_H
#define HOME_SCENE_PARAMETER_H

#include "SceneParameter.h"
#include "SqlitReadThread.h"
#include "../sources/ButtonManager.h"
#include "LoginInMaskWidget.h"
#include "AddSingleSongWidget.h"

#include <QParallelAnimationGroup>

class StarItemDisplayer;
class SongItemDisplayer;
class ItemDisplayer;
struct TopSceneParameter;
struct TopicSceneParameter;
class MainWindowView;

struct HomeSceneParameter : public SceneParameter
{
	Q_OBJECT

public:
	HomeSceneParameter(QWidget *_parent);
	~HomeSceneParameter();

	void showMainWidget();

private:
	void displayAllItems();
	void addAction();

	void addButtonAction(const QString &_buttonName, QWidget* _widget);
	QRect getAnimationEndValue(const QRect &_widgetRect);

private slots:
	void setWidget();
	void showWidget();

private:
	ButtonManager manager;
	StarItemDisplayer *starItemView;
	SongItemDisplayer *songItemView;
	TopSceneParameter *topScene;
	MainWindowView *topView;
	TopicSceneParameter *topicScene;
	MainWindowView *topicView;
	LoginInMaskWidget loginInMaskWidget;
	AddSingleSongWidget addSingleSongWidget;

	QParallelAnimationGroup animationGroup;

	QWidget *curWidget;
	QMap<MyButton*, QWidget*> widgetMap;
};

#endif
