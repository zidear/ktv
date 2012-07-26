/*
 * DiningTableWidget.h
 *
 *  Created on: 2011-2-14
 *      Author: huangbei
 */
#ifndef SONGITEM_H_
#define SONGITEM_H_

#include <QGraphicsProxyWidget>
#include <QGraphicsItem>

#include "../../baselib/headers/MyButton.h"
#include "../../baselib/headers/DataStruct.h"

class SongInfoDisplayer;
class PreviewMaskWidget;

class SongItem : public QGraphicsProxyWidget
{
	Q_OBJECT
public:
	SongItem(PreviewMaskWidget *_preview, QGraphicsItem *parent = 0, Qt::WindowFlags wFlags = Qt::FramelessWindowHint);
	~SongItem();
	QRectF boundingRect() const;
	void setInfo(const SongStruct &_songInfo);

private:
	void setupConnection();

private slots:
	void previewSong();

public slots:
	void addSong();

private:
	SongStruct songInfo;
	SongInfoDisplayer *songNameDisplayer;
	MyButton *songImageDisplayer;
	PreviewMaskWidget *preview;
};

#endif 
