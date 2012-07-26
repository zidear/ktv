#include "SpellFilterMaskWidget.h"
#include "FilterObserver.h"

SpellFilterMaskWidget::SpellFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent)
: filter(_filter), maskWidget(_parent), softBoard(&maskWidget)
{
	connect(&softBoard, SIGNAL(validFilter(QString)), 
		this, SLOT(filterItems(QString)));

	softBoard.registerObserver(_observer);
	softBoard.setShowCoordinate(QPoint(50, 250));
}

SpellFilterMaskWidget::~SpellFilterMaskWidget()
{

}

void SpellFilterMaskWidget::show()
{
	maskWidget.show();
}

void SpellFilterMaskWidget::filterItems(QString _SQLStr)
{
	softBoard.notifyAll(filter.arg(_SQLStr));
	maskWidget.hide();
}

