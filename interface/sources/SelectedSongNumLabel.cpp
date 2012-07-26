#include <QWidget>
#include "SelectedSongNumLabel.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../sqlite/DbUtil.h"


const QString NUMBER_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/selectedsongNum.png";

SelectedSongNumLabel::SelectedSongNumLabel(QWidget *_parent)
: font(GlobalData::NumberFont, 20, QFont::Bold), image(NUMBER_IMAGE_PATH)
, QWidget(_parent)
{
	setGeometry(47, 0, image.width(), image.height());

	pen.setStyle(Qt::SolidLine);
	pen.setWidth(4);
	pen.setBrush(Qt::white);

	updateData();
}

SelectedSongNumLabel::~SelectedSongNumLabel(void)
{
}

void SelectedSongNumLabel::updateData()
{
	number = QString::number(DbUtil::getSelectedSongCount());
	update();
}

void SelectedSongNumLabel::paintEvent(QPaintEvent *enent){
	printf("SelectedSongNumLabel::paintEvent start!\n");
	QPainter painter(this);
	
	if (image.isNull())
	{
		printf("SelectedSongNumLabel::image is NULL!\n");
		return;
	}
	
	painter.setOpacity(0.99);

	painter.drawImage(QPoint(0,0), image);

	/*painter.setFont(font);*/
	painter.setPen(pen);
	painter.drawText(3,3, 35, 25, Qt::AlignHCenter, number);

	printf("SelectedSongNumLabel::paintEvent end!\n");
}

