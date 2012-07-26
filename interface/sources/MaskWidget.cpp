#include "MaskWidget.h"

MaskWidget::MaskWidget(QWidget *parent)
: QWidget(parent, Qt::FramelessWindowHint)
{
	setAutoFillBackground(true);
	QPalette palette;
	palette.setColor(QPalette::Background, QColor(0, 0, 0, 0x7f));
	setPalette(palette);  

	setVisible(false);
	setGeometry(0, 0, 1280, 650);

	setFocusPolicy(Qt::ClickFocus);
}

MaskWidget::~MaskWidget()
{

}

void MaskWidget::mouseReleaseEvent (QMouseEvent *event)
{
	this->hide();
	QWidget::mouseReleaseEvent(event);
}

void MaskWidget::showEvent(QShowEvent *event)
{
	raise();
	QWidget::showEvent(event);
}

