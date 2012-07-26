/*
 * DiningTableWidget.h
 *
 *  Created on: 2011-2-14
 *      Author: huangbei
 */

#ifndef DININGTABLEITEM_H_
#define DININGTABLEITEM_H_

#include <QGraphicsWidget>
#include <QPixmap>
#include <QFont>

#include "../../baselib/headers/DataStruct.h"

class StarItem : public QGraphicsWidget
{
	Q_OBJECT

	enum{IMAGE_WIDTH = 10, IMAGE_LENGTH = 10};

public:
	StarItem();
	virtual ~StarItem();
	QRectF boundingRect() const;
	int getSingerID();
	void setSingerInfo(const SingerStruct &_singerInfo);
	void clear();

signals:
	void clicked();

protected:
	void paint(QPainter * painter, const QStyleOptionGraphicsItem *option, QWidget *widget);
	void mousePressEvent ( QGraphicsSceneMouseEvent * event );

private:
	QString starName;
	int starIndex;
	QPixmap singerImage;
	QPixmap starBackgroundImage;
	SingerStruct singerInfo;
	QFont font;
	QRect songNameRect;
};

#endif /* DININGTABLEWIDGET_H_ */
