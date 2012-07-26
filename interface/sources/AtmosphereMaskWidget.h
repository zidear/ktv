#ifndef _ATMOSPHERE_MASK_WIDGET_H_
#define _ATMOSPHERE_MASK_WIDGET_H_

#include "AtmosphereWidget.h"
#include "MaskWidget.h"

#include <QPropertyAnimation>

class AtmosphereMaskWidget :
	public QObject
{
	Q_OBJECT
public:
	AtmosphereMaskWidget(QWidget *_parent);
	~AtmosphereMaskWidget(void);

public slots:
	void show();

private:
	void setAnimationParam(const QPoint &_showPoint);


private:
	MaskWidget maskWidget;
	AtmosphereWidget atmosphereWidget;

	QPropertyAnimation animation;
};

#endif
