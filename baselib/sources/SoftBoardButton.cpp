#include <QPainter>

#include "../../baselib/headers/GlobalData.h"
#include "SoftBoardButton.h"

const QString SOFT_BOARD_BUTTON_RELEASE_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/softboardbutton.png";
const QString SOFT_BOARD_BUTTON_PRESS_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/softboardbutton_1.png";

SoftBoardButton::SoftBoardButton(const QString &_buttonText, QWidget *parent)
: releaseImage(SOFT_BOARD_BUTTON_RELEASE_IMAGE_PATH)
, buttonText(_buttonText), QWidget(parent,Qt::FramelessWindowHint)
{
	setCursor(Qt::PointingHandCursor);
	curImage = &releaseImage;
	pressImage.load(SOFT_BOARD_BUTTON_PRESS_IMAGE_PATH);
	setGeometry(0, 0, curImage->width(), curImage->height());
}

SoftBoardButton::~SoftBoardButton(void)
{
	delete pressButtonTextRect;
	delete releaseButtonTextRect;
}

void SoftBoardButton::setShowPoint(const QPoint &_point)
{
	setGeometry(_point.x(), _point.y(), this->width(), this->height());
	releasePoint = _point;

	pressPoint.setX(_point.x() + releaseImage.width() / 2 - pressImage.width() / 2);
	pressPoint.setY(_point.y() + releaseImage.height() - pressImage.height());

	pressButtonTextRect = getButtonTextRect(pressImage.width(), pressImage.height() - 30);
	releaseButtonTextRect = getButtonTextRect(releaseImage.width(), releaseImage.height());

	buttonTextRect = releaseButtonTextRect;
}

void SoftBoardButton::paintEvent(QPaintEvent *enent){
	QPainter painter(this);
	if(curImage->isNull()){
		return;
	}

	painter.setOpacity(0.99);
	painter.drawPixmap(QPoint(0,0), *curImage);

	painter.drawText(*buttonTextRect, Qt::AlignCenter, buttonText);

}

void SoftBoardButton::mousePressEvent(QMouseEvent *event)
{
	if (pressImage.isNull())
	{
		return;
	}

	curImage = &pressImage;

	setGeometry(pressPoint.x(), pressPoint.y(), curImage->width(), curImage->height());

	buttonTextRect = pressButtonTextRect;

	update();
}

void SoftBoardButton::mouseReleaseEvent(QMouseEvent *event)
{
	curImage = &releaseImage;

	setGeometry(releasePoint.x(), releasePoint.y(), curImage->width(), curImage->height());

	buttonTextRect = releaseButtonTextRect;

	update();

	emit click();
}

QString SoftBoardButton::getButtonText() const
{
	return buttonText;
}

QRect* SoftBoardButton::getButtonTextRect(int _width, int _height)
{
	return new QRect(0, 0, _width, _height);
}
