#ifndef LANGUAGEFILTERMASKWIDGET_H
#define LANGUAGEFILTERMASKWIDGET_H

#include "MaskWidget.h"
#include "FilterSubject.h"

#include <QString>

class TipsFilterWidget;

class LanugageFilterMaskWidget : public QObject
{
	Q_OBJECT

public:
	LanugageFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent);
	~LanugageFilterMaskWidget();

public slots:
	void show();

private slots:
	void filterItems(QString _SQLStr);

private:	
	MaskWidget maskWidget;
	TipsFilterWidget *wordsWidget;
	QString filter;
	QList<QString> filterList;
};


#endif 
