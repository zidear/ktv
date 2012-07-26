/*
 * SongItem.cpp
 *
 *  Created on: 2011-2-14
 *      Author: huangbei
 */

#include <QFileInfo>
#include "SongItem.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../baselib/sources/SongInfoDisplayer.h"

#include "SelectedSongListSubject.h"
#include "PreviewMaskWidget.h"

#include <QFileInfo>

const QString SONG_ITEM_BACKGROUND = IMAGE_PATH_PREFIX + "Common/songbackground.png";
const QString SONG_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/mtv.png";


SongItem::SongItem(PreviewMaskWidget *_preview, QGraphicsItem *parent, Qt::WindowFlags wFlags) 
								 : preview(_preview), QGraphicsProxyWidget(parent, wFlags) 
{
	setOpacity(0.99);

	songNameDisplayer = new SongInfoDisplayer();

	songImageDisplayer = new MyButton(13, 5, SONG_IMAGE, songNameDisplayer, "2");

	setWidget(songNameDisplayer);
	setCacheMode(QGraphicsItem::DeviceCoordinateCache);

	setupConnection();
}

SongItem::~SongItem()
{
	delete songImageDisplayer;
}


void SongItem::setInfo(const SongStruct &_songInfo)
{
	songInfo = _songInfo;
	songNameDisplayer->setInfo(_songInfo);

	QString imagePath = QFileInfo(_songInfo.SongImagePath).exists() ? _songInfo.SongImagePath : SONG_IMAGE;
	songImageDisplayer->setImagePath(imagePath);
}
QRectF SongItem::boundingRect() const
{
	return QRectF(0, 0, songNameDisplayer->width(), songNameDisplayer->height());
}

void SongItem::setupConnection()
{
	connect(songNameDisplayer, SIGNAL(click()), this, SLOT(addSong()));
	connect(songImageDisplayer, SIGNAL(click()), this, SLOT(previewSong()));
}

void SongItem::addSong()
{
	SelectedSongListSubject::Instance()->updateDataBase(songInfo);
}

void SongItem::previewSong()
{
	preview->showSong(songInfo.SongId);
}



