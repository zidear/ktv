#ifndef MAIN_WINDOWS_VIEW_H
#define MAIN_WINDOWS_VIEW_H

#include <QGraphicsView>

struct SceneParameter;

class MainWindowView : public QGraphicsView
{
	Q_OBJECT

public:
	MainWindowView(SceneParameter* const _scene, QWidget *_parent);

	SceneParameter* getSceneParam();

signals:
	void currentPageChange(int _pageIndex);

protected:
	void mousePressEvent(QMouseEvent *event);
	void mouseReleaseEvent(QMouseEvent *event);
	void mouseMoveEvent(QMouseEvent *event);
	void showEvent(QShowEvent *event);

public slots:
	void prePage();
	void nextPage();

private:
	int x;
	bool isMovable;
	SceneParameter* const scene;
};

#endif
