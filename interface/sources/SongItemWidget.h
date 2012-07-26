#ifndef _SONG_ITEM_WIDGET_H_
#define _SONG_ITEM_WIDGET_H_

#include <QWidget>
#include <QHBoxLayout>
#include <QImage>
#include <QPushButton>
#include <QLabel>

#include "../../baselib/headers/DataStruct.h"
#include "../../baselib/sources/KTVButton.h"

class SongItemWidget :
	public QWidget
{
	Q_OBJECT
public:
	SongItemWidget(const SelectedSong &_song, QWidget *_parent = 0);
	~SongItemWidget(void);

private slots:
	void moveUp();
	void deleteCurSongFromOrderList();

private:
	void paintEvent(QPaintEvent *enent);

signals:
	void updateOrderedList();

private:
	QLabel songName;
	QLabel singerName;
	QImage bkImage;
	KTVButton upButton;
	KTVButton deleteButton;
	QHBoxLayout layout;

	SelectedSong song;
};

#endif
