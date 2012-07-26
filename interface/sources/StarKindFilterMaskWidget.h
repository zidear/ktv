#ifndef STARKINDFILTERMASKWIDGET_H
#define STARKINDFILTERMASKWIDGET_H

#include "StarKindWidget.h"
#include "MaskWidget.h"

#include <QString>

struct FiltObserver;

class StarKindFilterMaskWidget : public QObject
{
	Q_OBJECT
public:
	StarKindFilterMaskWidget(const QString &_filter, FiltObserver *_observer, QWidget *_parent);
	~StarKindFilterMaskWidget();

public slots:
	void show();

private slots:
	void filterItems(QString _SQLStr);

private:	
	MaskWidget maskWidget;
	StarKindWidget starKindWidget;
	QString filter;
};

#endif 
