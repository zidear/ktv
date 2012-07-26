#include "../headers/MainWindowView.h"

#include <QPushButton>
#include <QBitmap>
#include <QMouseEvent>
#include <QScrollBar>

#include "SceneParameter.h"
#include "HomeSceneParameter.h"

MainWindowView::MainWindowView(SceneParameter* const _scene, QWidget *_parent) : scene(_scene), QGraphicsView(_parent)
{
	setStyleSheet("background: transparent;border:0px;");
	this->setWindowFlags(Qt::FramelessWindowHint);
	this->setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
	this->setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
	this->setRenderHints(this->renderHints() | QPainter::Antialiasing | QPainter::SmoothPixmapTransform);
 	this->setViewportUpdateMode(QGraphicsView::BoundingRectViewportUpdate);
	this->setVisible(true);

	centerOn(0, 0);
	isMovable = false;

	scene->addToView(this);
}

SceneParameter* MainWindowView::getSceneParam()
{
	return scene;
}


void MainWindowView::prePage()
{
	QScrollBar* hScrollBar = horizontalScrollBar();
	int prePage_X = hScrollBar->value() - width();

	prePage_X = prePage_X < 0 ? 0 : prePage_X;

	hScrollBar->setValue(prePage_X);

	emit currentPageChange(-1);
}

void MainWindowView::nextPage()
{
	QScrollBar* hScrollBar = horizontalScrollBar();
	int prePage_X = hScrollBar->value() + width();

	prePage_X = prePage_X < 0 ? 0 : prePage_X;

	hScrollBar->setValue(prePage_X);
	emit currentPageChange(1);

}

void MainWindowView::mousePressEvent(QMouseEvent *event)
{
	/*isMovable = true;*/
	QGraphicsView::mousePressEvent(event);
}

void MainWindowView::mouseMoveEvent(QMouseEvent *event)
{
}

void MainWindowView::mouseReleaseEvent(QMouseEvent *event)
{
	if (isMovable)
	{
		centerOn(event->x(), 0);
	}

	isMovable = false;

	QGraphicsView::mouseReleaseEvent(event);
}

void MainWindowView::showEvent(QShowEvent *event)
{
	HomeSceneParameter *homeSceneParam = dynamic_cast<HomeSceneParameter*>(scene);
	if (!homeSceneParam)
	{
		return;
	}

	homeSceneParam->showMainWidget();
}



