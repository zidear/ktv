#ifndef _TUNING_MASK_WIDGET_H_
#define _TUNING_MASK_WIDGET_H_

#include "TuningTabWidget.h"
#include "MaskWidget.h"

#include <QPropertyAnimation>
#include <QPoint>

class TuningMaskWidget :
	public QObject
{
	Q_OBJECT
public:
	TuningMaskWidget(QWidget *_parent);
	~TuningMaskWidget(void);

public slots:
	void show();
	void setAnimationParam(const QPoint &_showPoint);

private:
	MaskWidget maskWidget;
	TuningTabWidget tuningWidget;

	QPropertyAnimation animation;
};

#endif
