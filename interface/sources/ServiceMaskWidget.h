#ifndef _SERVICE_MASK_WIDGET_H_
#define _SERVICE_MASK_WIDGET_H_

#include "ServiceWidget.h"
#include "MaskWidget.h"

#include <QPropertyAnimation>

class ServiceMaskWidget :
	public QObject
{
	Q_OBJECT
public:
	ServiceMaskWidget(QWidget *_parent);
	~ServiceMaskWidget(void);

public slots:
	void show();

private:
	void setAnimationParam(const QPoint &_showPoint);

private:
	MaskWidget maskWidget;
	ServiceWidget serviceWidget;

	QPropertyAnimation animation;
};

#endif
