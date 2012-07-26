#include "KTVDialog.h"
#include "../../baselib/headers/GlobalData.h"
#include <QPainter>

static const QString CLOSE_BUTTON_BACKGROUND_PATH = IMAGE_PATH_PREFIX + "Toolsicon/closebutton.png";

KTVDialog::KTVDialog(QWidget *_parent, Qt::WFlags flags) 
: closeButton(0, 0, CLOSE_BUTTON_BACKGROUND_PATH, this), QWidget(_parent, flags)
{
	setAttribute(Qt::WA_NoMousePropagation);
	connect(&closeButton, SIGNAL(click()), _parent, SLOT(hide()));	
}

void KTVDialog::setBackgroundImage(const QString &_imagePath)
{
	backgroundImage.load(_imagePath);
	setGeometry(0, closeButton.height() / 2
		, backgroundImage.width() + closeButton.width() / 2
		, backgroundImage.height() + closeButton.height() / 2);

	closeButton.setGeometry(this->width() - closeButton.width(), 0
		, closeButton.width(), closeButton.height());
	update();
}

void KTVDialog::setShowCoordinate(const QPoint &_point)
{
	setGeometry(_point.x(), _point.y() + closeButton.height() / 2
		, backgroundImage.width() + closeButton.width() / 2
		, backgroundImage.height() + closeButton.height() / 2);
}


void KTVDialog::paintEvent(QPaintEvent *event)
{
	QPainter painter(this);

	if (backgroundImage.isNull())
	{
		printf("KTVDialog::backgroundImage is NULL!\n");
		return;
	}

	painter.setOpacity(0.99);

	painter.drawPixmap(0, 10, backgroundImage);
}

void KTVDialog::showEvent(QShowEvent *event)
{
	emit showDialog();
}

