#ifndef SONGINFODISPLAYER_H_
#define SONGINFODISPLAYER_H_

#include "../../baselib/headers/DataStruct.h"
#include <QWidget>

class SongInfoDisplayer : public QWidget{
	Q_OBJECT

public:
	SongInfoDisplayer(QWidget *parent = 0);
	~SongInfoDisplayer();
	void setInfo(const SongStruct &_song);

protected:
	virtual void paintEvent(QPaintEvent *event);
	virtual void mousePressEvent(QMouseEvent *event);
signals:
	void click();

private:
	SongStruct song;
	QPixmap backgroundImage;
};

#endif
