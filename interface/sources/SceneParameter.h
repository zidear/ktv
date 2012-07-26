#ifndef SCENE_PARAMETER_H
#define SCENE_PARAMETER_H

#include <QObject>
#include <QGraphicsScene>

class QGraphicsView;

struct SceneParameter : public QObject
{
	SceneParameter();
	~SceneParameter();
	void addToView(QGraphicsView* _view);
	void clearItems() const;
	void scrollToDefaultPos();

public: 
	virtual void displayAllItems() = 0;

protected:
	virtual void addAction() = 0;
	

protected:
	QGraphicsScene *scene;
	QGraphicsView *displayView;
};

#endif
