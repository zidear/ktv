#ifndef SPELLFILTERMASKWIDGET_H
#define SPELLFILTERMASKWIDGET_H

#include "MaskWidget.h"
#include "SoftKeyBoard.h"
#include "FilterSubject.h"

#include <QString>

class SpellFilterMaskWidget : public QObject
{
	Q_OBJECT
public:
	SpellFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent);
	~SpellFilterMaskWidget();

public slots:
	void show();

private slots:
	void filterItems(QString _SQLStr);

private:	
	MaskWidget maskWidget;
	SoftKeyBoard softBoard;
	QString filter;
};


#endif 
