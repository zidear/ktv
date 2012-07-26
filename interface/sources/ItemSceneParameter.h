#ifndef _ITEM_SCENE_PARAMETER_H
#define _ITEM_SCENE_PARAMETER_H

#include <QObject>
#include <QString>
#include "SceneParameter.h"

struct ItemSceneParameter : public SceneParameter
{
	Q_OBJECT

public:
	ItemSceneParameter();
	virtual void updateScene(const QString &_sqlStr) = 0;
	virtual bool prepareNext() = 0;
	virtual bool prepareLast() = 0;
	virtual int getColumnOffset(int _curIndex) = 0;
	virtual int getRowOffset(int _curIndex) = 0;

signals:
	void changePagesCount(int _pagesCount);
};

#endif
