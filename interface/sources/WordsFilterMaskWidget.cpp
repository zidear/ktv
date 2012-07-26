#include "WordsFilterMaskWidget.h"
#include "FilterObserver.h"
#include "TipsFilterWidget.h"
#include "../../baselib/headers/GlobalData.h"

QString WORD_COUNT_BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/wordcountbackground.png";

WordsFilterMaskWidget::WordsFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent)
: filter(_filter), maskWidget(_parent)
{
	filterList << tr("一") << tr("二") << tr("三") << tr("四") << tr("五") << tr("六") << tr("七")
		       << tr("八") << tr("九") << tr("其他");

	wordsWidget = new TipsFilterWidget(WORD_COUNT_BACKGROUND_IMAGE_PATH, &filterList , &maskWidget);

	connect(wordsWidget, SIGNAL(validFilter(QString)), 
		this, SLOT(filterItems(QString)));

	wordsWidget->registerObserver(_observer);

	wordsWidget->setShowCoordinate(QPoint(50, 470));
}

WordsFilterMaskWidget::~WordsFilterMaskWidget()
{
	delete wordsWidget;
}

void WordsFilterMaskWidget::show()
{
	maskWidget.show();
}

void WordsFilterMaskWidget::filterItems(QString _SQLStr)
{
	int buttonTextIndex = filterList.indexOf(_SQLStr);

	wordsWidget->notifyAll(filter.arg(buttonTextIndex + 1));
	maskWidget.hide();
}

#include "moc_WordsFilterMaskWidget.cpp"
