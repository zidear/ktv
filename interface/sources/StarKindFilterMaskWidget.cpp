#include "StarKindFilterMaskWidget.h"
#include "FilterObserver.h"

StarKindFilterMaskWidget::StarKindFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent)
	: filter(_filter), maskWidget(_parent), starKindWidget(&maskWidget)
{
	connect(&starKindWidget, SIGNAL(validFilter(QString)), 
		this, SLOT(filterItems(QString)));

	starKindWidget.registerObserver(_observer);
}

StarKindFilterMaskWidget::~StarKindFilterMaskWidget()
{

}

void StarKindFilterMaskWidget::show()
{
	maskWidget.show();
}

void StarKindFilterMaskWidget::filterItems(QString _SQLStr)
{
	starKindWidget.notifyAll(filter.arg(_SQLStr));
	maskWidget.hide();
}

