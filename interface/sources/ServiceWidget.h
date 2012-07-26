#ifndef _SERVICE_WIDGET_H
#define _SERVICE_WIDGET_H

#include <QWidget>
#include <QHBoxLayout>
#include "../../baselib/sources/KTVDialog.h"
#include "../../baselib/sources/KTVButton.h"

class ServiceWidget : public KTVDialog
{
	Q_OBJECT

public:
	ServiceWidget(QWidget *_parent);
	~ServiceWidget();

private:
	KTVButton vipButton;
	KTVButton drinksButton;
	KTVButton broadcastButton;
	KTVButton movieButton;
	KTVButton backgroundButton;
};

#endif 
