#include <QGraphicsView>
#include <QScrollBar>

#include "SceneParameter.h"

SceneParameter::SceneParameter()
{
	scene = new QGraphicsScene;
}

SceneParameter::~SceneParameter()
{
	delete scene;
}

void SceneParameter::addToView(QGraphicsView* _view)
{
	displayView = _view;
	_view->setScene(scene);
}

void SceneParameter::clearItems() const
{
	/*scene->clear();*/
}

void SceneParameter::scrollToDefaultPos()
{
	displayView->horizontalScrollBar()->setValue(1280);
}

