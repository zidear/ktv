#ifndef LOGININMASKWIDGET_H
#define LOGININMASKWIDGET_H

#include "MaskWidget.h"
#include "LoginInWidget.h"

class LoginInMaskWidget : public QWidget
{
public:
	LoginInMaskWidget(QWidget *_parent);
	~LoginInMaskWidget();

	//void show();

private:
	MaskWidget maskWidget;
	LoginInWidget loginInWidget;
};

#endif // LOGININMASKWIDGET_H
