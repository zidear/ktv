#ifndef _USER_SONG_LIST_WIDGET_H_
#define _USER_SONG_LIST_WIDGET_H_

#include <QTabWidget>
#include "SongListWidget.h"

class UserSongListWidget :
	public QWidget
{
public:
	UserSongListWidget(QWidget *_parent, Qt::WFlags flags = Qt::FramelessWindowHint);
	~UserSongListWidget(void);

protected:
	void paintEvent(QPaintEvent *event);
	void leaveEvent(QEvent *event);

private:
	QTabWidget userSongLists;
	SongListWidget unsungSongWidget;
	SongListWidget sungSongWidget;

	QPixmap backgroundImage;
};

#endif
