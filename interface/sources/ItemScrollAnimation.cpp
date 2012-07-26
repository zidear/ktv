#include "ItemScrollAnimation.h"
#include "ItemSceneParameter.h"
#include <QScrollBar>
#include <QtGlobal>
#include <QDebug>
#include "AssertDefine.h"

ItemScrollAnimation::ItemScrollAnimation(QScrollBar *_scrollBar, 
ItemSceneParameter* const _itemScene, int _step)
	: step(_step), scrollBar(_scrollBar), animation(scrollBar, "value"), itemScene(_itemScene)
{
	animation.setDuration(2000);
	animation.setEasingCurve(QEasingCurve::InOutCubic);
}

ItemScrollAnimation::~ItemScrollAnimation()
{

}

void ItemScrollAnimation::forward()
{
	V_ASSERT(animationIsStoped());

	V_ASSERT(itemScene->prepareNext());
	qDebug() << scrollBar->value();
	qDebug() << scrollBar->maximum();
	animation.setStartValue(scrollBar->value());
	animation.setEndValue(scrollBar->value() + step);
	animation.start();
}

void ItemScrollAnimation::backward()
{
	V_ASSERT(animationIsStoped());

	V_ASSERT(itemScene->prepareLast());
	qDebug() << scrollBar->value();
	animation.setStartValue(scrollBar->value());
	animation.setEndValue(scrollBar->value() - step);
	animation.start();


}

bool ItemScrollAnimation::animationIsStoped()
{
	return animation.state() == QAbstractAnimation::Stopped;
}
