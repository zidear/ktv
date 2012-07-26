#include "SongInfoDisplayer.h"
#include "../../baselib/headers/GlobalData.h"

#include <QPainter>
#include <QFont>
#include <QPen>

const QString SONG_ITEM_BACKGROUND = IMAGE_PATH_PREFIX + "Common/songbackground.png";

SongInfoDisplayer::SongInfoDisplayer(QWidget *parent) 
: backgroundImage(SONG_ITEM_BACKGROUND), QWidget(parent,Qt::FramelessWindowHint)
{
	setGeometry(0, 0, backgroundImage.width(), backgroundImage.height());
	setAttribute(Qt::WA_TranslucentBackground);

#if 0
	QFont font;
	font.setPointSize(14);
	setFont(font);
#endif

}

SongInfoDisplayer::~SongInfoDisplayer()
{
}

void SongInfoDisplayer::setInfo(const SongStruct & _songInfo)
{
	song = _songInfo;

	update();
}

void SongInfoDisplayer::paintEvent(QPaintEvent *enent){
	QPainter painter(this);
	if(backgroundImage.isNull())
	{
		return;
	}

	painter.drawPixmap(QPoint(0,0), backgroundImage);

	painter.setPen(QPen(Qt::magenta));	
	painter.drawText(173, 51, song.Name);

	painter.setPen(QPen(Qt::white, 10));	
	painter.drawText(173, 110, song.SingerName);


}

void SongInfoDisplayer::mousePressEvent(QMouseEvent *event)
{
	emit click();
}


