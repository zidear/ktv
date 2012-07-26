#ifndef _TUNING_WIDGET_H
#define _TUNING_WIDGET_H

#include <QWidget>
#include <QHBoxLayout>
#include "KTVTabWidget.h"
#include "TuningWidget.h"
#include "SceneWidget.h"
#include "../../baselib/sources/KTVDialog.h"

class TuningTabWidget : public KTVDialog
{
	Q_OBJECT

public:
	TuningTabWidget(QWidget *_parent);
	~TuningTabWidget();

private:
	KTVTabWidget tabWidget;
	TuningWidget tuningWidget;
	SceneWidget sceneWidget;
};

#endif 
