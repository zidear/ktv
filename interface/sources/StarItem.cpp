/*
 * StarItem.cpp
 *
 *  Created on: 2011-2-14
 *      Author: huangbei
 */
#include <QtGlobal>
#include <QDebug>
#include <QPainter>
#include <QMenu>
#include <QGraphicsSceneContextMenuEvent>
#include "StarItem.h"
#include "../../baselib/headers/GlobalData.h"

const QString STAR_BACKGROUND_STR = SINGER_PIXTURE_PREFIXE + "star.png";

StarItem::StarItem() 
: songNameRect(10, 166, 160, 60), 
starBackgroundImage(STAR_BACKGROUND_STR), QGraphicsWidget(0) 
{
	setAcceptHoverEvents(true);
	setCacheMode(DeviceCoordinateCache);
// 	setFlag(QGraphicsItem::ItemIsMovable, false);
// 	setFlag(QGraphicsItem::ItemIsSelectable, true);

	setOpacity(0.99);

	font.setPointSize(14);
	resize(starBackgroundImage.width(), starBackgroundImage.height());
}

StarItem::~StarItem() {
}

void StarItem::setSingerInfo(const SingerStruct &_singerInfo)
{
	singerInfo = _singerInfo;
	singerImage.load(singerInfo.PicturePath);
	update();
}

void StarItem::paint(QPainter * painter, const QStyleOptionGraphicsItem *option, QWidget *widget)
{
	painter->drawPixmap(0, 0, starBackgroundImage);

	if (!singerImage.isNull())
	{
		painter->drawPixmap(QRect(8, 7, 160, 160), singerImage);
	}

	/*painter->setFont(font);*/
	painter->setPen(QPen(Qt::white));
	painter->drawText(songNameRect, Qt::AlignCenter, singerInfo.Name);
}

QRectF StarItem::boundingRect() const
{
	int i = starBackgroundImage.width();
	int j = starBackgroundImage.height();
	return QRectF(0, 0, starBackgroundImage.width(), starBackgroundImage.height());
}

int StarItem::getSingerID()
{
	return singerInfo.SingerId;
}

void StarItem::clear()
{
	setSingerInfo(SingerStruct());
}

void StarItem::mousePressEvent( QGraphicsSceneMouseEvent * event )
{
	emit clicked();

	QGraphicsWidget::mousePressEvent(event);

}

