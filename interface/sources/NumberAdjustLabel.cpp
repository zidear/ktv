#include "NumberAdjustLabel.h"
#include "../../baselib/headers/GlobalData.h"


const QString UP_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/up.png";
const QString DOWN_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/down.png";

NumberAdjustLabel::NumberAdjustLabel(QWidget *parent)
	: width(50), height(160), label(this), upButton(UP_BUTTON_IMAGE, this), 
	downButton(DOWN_BUTTON_IMAGE, this), QWidget(parent)
{
	upButton.setPos(QPoint(0, 0));
	QPalette pa;
	pa.setColor(QPalette::WindowText,Qt::white);

	QFont font;
	font.setPixelSize(25);
	font.setBold(true);

	label.setPalette(pa);
	label.setFont(font);
	label.setGeometry(0, 50, 50, 50);
	label.setAlignment(Qt::AlignCenter);
	downButton.setPos(QPoint(0, 110));
}

NumberAdjustLabel::~NumberAdjustLabel()
{

}

void NumberAdjustLabel::setString(const QString &_text)
{
	label.setText(_text);
}

void NumberAdjustLabel::setShowCoordinate(const QPoint &_point)
{
	setGeometry(_point.x(), _point.y(), width, height);
}



