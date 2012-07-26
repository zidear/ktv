#include <QPainter>
#include <QMouseEvent>

#include "../../baselib/headers/GlobalData.h"
#include "TipsButton.h"
#include "TipsWidget.h"

TipsButton::TipsButton(TipsWidget *_tipsWidget, const QString &_buttonText, QWidget *_parent, const QString &_imagePath) 
: curImage(_imagePath), tipsWidget(_tipsWidget), buttonText(_buttonText), QWidget(_parent,Qt::FramelessWindowHint)
{
	setCursor(Qt::PointingHandCursor);
	setVisible(true);
}

TipsButton::~TipsButton(void)
{

}

void TipsButton::paintEvent(QPaintEvent *enent){

	QPainter painter(this);
	if(!curImage.isNull()){
		painter.drawPixmap(QPoint(0,0), curImage);
	}

	if (!buttonText.isEmpty())
	{
		painter.drawText(/*geometry(), Qt::AlignCenter*/QPoint(width() / 2, height() / 2), buttonText);
	}

}

void TipsButton::mousePressEvent(QMouseEvent *event)
{
	int x = event->x();
	int y = event->y();
	tipsWidget->setShowCoordinateInGlobal(mapToGlobal(QPoint(x, y)));
	tipsWidget->setText(buttonText);
	tipsWidget->show();
}

void TipsButton::mouseReleaseEvent(QMouseEvent *event){
	tipsWidget->hide();

	emit click();
}

QString TipsButton::text() const
{
	return buttonText;
}


