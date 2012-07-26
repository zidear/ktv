#ifndef _TIPS_FILTER_WIDGET_H_
#define _TIPS_FILTER_WIDGET_H_

#include <QWidget>
#include <QList>
#include "../../baselib/sources/TipsWidget.h"
#include "WidgetSubject.h"

class TipsButton;

class TipsFilterWidget :
	public WidgetSubject
{
	Q_OBJECT
public:
	TipsFilterWidget(const QString &_imagePath, QList<QString>* const _filterList, QWidget *_parent, Qt::WFlags flags = Qt::FramelessWindowHint);
	~TipsFilterWidget(void);

private slots:
	void emitFiltSignal();

private:
	void addFilterButtonsAndConnection(const QPoint &_startPoint);	

private:
	QSize numberButtonSize;
	QList<QString> number;
	QList<TipsButton*> buttonManager;
	TipsWidget tipsWidget;
	QList<QString> *filterList;
};

#endif
