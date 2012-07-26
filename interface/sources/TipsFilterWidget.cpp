#include "TipsFilterWidget.h"
#include "../../baselib/sources/TipsButton.h"

const QString ROUND_TIPS_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/roundbackground.png";


TipsFilterWidget::TipsFilterWidget(const QString &_imagePath, QList<QString>* const _filterList, QWidget *_parent, Qt::WFlags flags) 
: filterList(_filterList), tipsWidget(ROUND_TIPS_BUTTON_IMAGE_PATH, _parent), numberButtonSize(61, 40), WidgetSubject(_parent, flags)
{
	setBackgroundImage(_imagePath);

 	addFilterButtonsAndConnection(QPoint(0, 25));
}

TipsFilterWidget::~TipsFilterWidget(void)
{
	for (int buttonNo = 0; buttonNo < buttonManager.size(); buttonNo++)
	{
		delete buttonManager[buttonNo];
	}
}

void TipsFilterWidget::addFilterButtonsAndConnection(const QPoint &_startPoint)
{
	TipsButton *button;
	for (int buttonNo = 0; buttonNo < filterList->size(); buttonNo++)
	{
		button = new TipsButton(&tipsWidget, filterList->value(buttonNo), this);
		button->setGeometry(_startPoint.x() + buttonNo * numberButtonSize.width(), _startPoint.y(), numberButtonSize.width(), numberButtonSize.height());
		buttonManager.append(button);

		connect(button, SIGNAL(click()), this, SLOT(emitFiltSignal()));
	}
}

void TipsFilterWidget::emitFiltSignal()
{
	TipsButton *button = (TipsButton*)this->sender();

	emit validFilter(button->text());
}


#include "moc_TipsFilterWidget.cpp"
