#ifndef WORDSFILTERMASKWIDGET_H
#define WORDSFILTERMASKWIDGET_H

#include "MaskWidget.h"
#include "FilterSubject.h"

#include <QString>

class TipsFilterWidget;

class WordsFilterMaskWidget : public QObject
{
	Q_OBJECT

public:
	WordsFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent);
	~WordsFilterMaskWidget();

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
