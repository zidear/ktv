#include "LanugageFilterMaskWidget.h"
#include "FilterObserver.h"
#include "TipsFilterWidget.h"

const QString LANGUAGE_BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/languagebackground.png";


LanugageFilterMaskWidget::LanugageFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent)
: filter(_filter), maskWidget(_parent)
{
	filterList << tr("国") << tr("粤") << tr("闽") << tr("英") 
		       << tr("日") << tr("韩") << tr("其他");

	wordsWidget = new TipsFilterWidget(LANGUAGE_BACKGROUND_IMAGE_PATH, &filterList , &maskWidget);

	connect(wordsWidget, SIGNAL(validFilter(QString)), 
		this, SLOT(filterItems(QString)));

	wordsWidget->registerObserver(_observer);

	wordsWidget->setShowCoordinate(QPoint(50, 470));
}

LanugageFilterMaskWidget::~LanugageFilterMaskWidget()
{
	delete wordsWidget;
}

void LanugageFilterMaskWidget::show()
{
	maskWidget.show();
}

void LanugageFilterMaskWidget::filterItems(QString _SQLStr)
{
	wordsWidget->notifyAll(filter.arg(_SQLStr));
	maskWidget.hide();
}

#include "moc_LanugageFilterMaskWidget.cpp"
