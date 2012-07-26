#ifndef ITEMSCROLLANIMATION_H
#define ITEMSCROLLANIMATION_H

#include <QObject>
#include <QPropertyAnimation>

struct ItemSceneParameter;
class QScrollBar;

class ItemScrollAnimation : public QObject
{
	Q_OBJECT

public:
	ItemScrollAnimation(QScrollBar *_scrollBar, ItemSceneParameter* const _itemScene, int _step);
	~ItemScrollAnimation();

public slots:
	void forward();

	bool animationIsStoped();
	void backward();

private:
	ItemSceneParameter* const itemScene;
	QScrollBar *scrollBar;
	int step;
	QPropertyAnimation animation;
};

#endif // ITEMSCROLLANIMATION_H
