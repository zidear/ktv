#include "TuningTabContentWidget.h"
#include "../../baselib/headers/GlobalData.h"
#include "AssertDefine.h"
#include <QPainter>

const QString BACKGROUND_IMAGE = IMAGE_PATH_PREFIX + "tuning/content.png";

TuningTabContentWidget::TuningTabContentWidget(QWidget *parent)
	: bkImage(BACKGROUND_IMAGE), QWidget(parent)
{

}

TuningTabContentWidget::~TuningTabContentWidget()
{

}

void TuningTabContentWidget::paintEvent(QPaintEvent *event)
{
	V_ASSERT(!(bkImage.isNull()));
	QPainter painter(this);
	painter.drawPixmap(0, 0, bkImage);
}


