#ifndef STARKINDWIDGET_H
#define STARKINDWIDGET_H

#include <QWidget>
#include <QGridLayout>
#include "WidgetSubject.h"

class QPushButton;

class StarKindWidget : public WidgetSubject
{
	Q_OBJECT

public:
	StarKindWidget(QWidget *_parent);
	~StarKindWidget();

private:
	void setupSignalConnection();

private slots:
	void emitFiltSignal();

private:
	QPushButton *HKFemaleStar;
	QPushButton *HKMaleStar;
	QPushButton *ChinaFemaleStar;
	QPushButton *ChinaMaleStar;
	QPushButton *ForeignStar;
	QPushButton *SingerGroup;

	QGridLayout layout;
};

#endif 
