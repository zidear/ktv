#include <QPainter>

#include "../../baselib/headers/GlobalData.h"
#include "KTVButton.h"

KTVButton::KTVButton(const QString &_imagePath, QWidget *parent) 
: text(""), releaseImage(_imagePath), QWidget(parent,Qt::FramelessWindowHint)
{
	setCursor(Qt::PointingHandCursor);
	curImage = &releaseImage;
	pressImage.load(QString(_imagePath).replace(QString(".png"), QString("_1.png")));
	setMinimumWidth(curImage->width());
	setMinimumHeight(curImage->height());
}

KTVButton::~KTVButton(void)
{

}

void KTVButton::paintEvent(QPaintEvent *enent){

	QPainter painter(this);
	if(curImage->isNull())
	{
		return;
	}

	painter.setOpacity(0.99);

	painter.drawPixmap(QPoint(0,0), *curImage);

	painter.drawText(contentsRect(), Qt::AlignCenter, text);
}

void KTVButton::mousePressEvent(QMouseEvent *event)
{
	if (pressImage.isNull())
	{
		return;
	}

	curImage = &pressImage;
	update();
}

void KTVButton::mouseReleaseEvent(QMouseEvent *event){
	curImage = &releaseImage;
	update();

	emit click();
}

void KTVButton::setPos(const QPoint &_point)
{
	setGeometry(_point.x(), _point.y(), width(), height());
}

void KTVButton::setText(const QString &_text)
{
	text = _text;
	update();
}

QString KTVButton::getText()
{
	return text;
}



