#ifndef _SELECTED_SONG_NUM_LABEL_H_
#define _SELECTED_SONG_NUM_LABEL_H_

#include <QWidget>
#include <QImage>
#include <QPen>
#include <QFont>


#include "../../baselib/headers/MyButton.h"
#include "Observer.h"

class QFont;
class QPen;

class SelectedSongNumLabel : public QWidget, public Observer
{
public:
	SelectedSongNumLabel(QWidget *_parent);
	~SelectedSongNumLabel(void);

	void updateData();
private:
	void paintEvent(QPaintEvent *enent);

private:
	QFont font;
	QPen pen;
	QImage image;
	QString number;
};

#endif


