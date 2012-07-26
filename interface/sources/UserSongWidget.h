#ifndef USER_SONG_WIDGET_H_
#define USER_SONG_WIDGET_H_

#include <QWidget>
#include <QProgressBar>
#include <QLabel>
#include "SelectedSongNumLabel.h"
#include "UserSongListWidget.h"

class MyButton;

class UserSongWidget : public QWidget{
	Q_OBJECT
private:
	void _setupSignalConnection();
public:
	UserSongWidget(QWidget *parent = 0);
	~UserSongWidget();
	void display(void);

protected:
	void paintEvent(QPaintEvent *);

private:
	QProgressBar curSongProgress;
	QLabel songName;
	QLabel singerName;
	QImage bkImge;
	MyButton selectedSongButton;
	const int heightSpace;
	SelectedSongNumLabel songNumDisplayer;
	UserSongListWidget songListWidget;
};


#endif
