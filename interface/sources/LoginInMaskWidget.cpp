#include "LoginInMaskWidget.h"

LoginInMaskWidget::LoginInMaskWidget(QWidget *_parent) 
: maskWidget(_parent), loginInWidget(&maskWidget), QWidget(_parent)
{
	setVisible(false);
	loginInWidget.setShowCoordinate(QPoint(500, 100));
	maskWidget.setVisible(false);
}

LoginInMaskWidget::~LoginInMaskWidget()
{
}

// void LoginInMaskWidget::show()
// {
// 	maskWidget.show();
// }


