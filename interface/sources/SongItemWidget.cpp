#include <QPainter>
#include "SongItemWidget.h"
#include "SelectedSongListSubject.h"
#include "../../sqlite/DbUtil.h"

const QString DELETE_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/usersongdeletebutton.png";
const QString UP_BUTTON_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/upbutton.png";


SongItemWidget::SongItemWidget(const SelectedSong &_song, QWidget *_parent)
: song(_song), songName(_song.songName, this), singerName(_song.singerName, this)
, upButton(UP_BUTTON_IMAGE_PATH, this), deleteButton(DELETE_BUTTON_IMAGE_PATH, this), QWidget(_parent)
{
	layout.addWidget(&songName);
 	layout.addWidget(&singerName);
	layout.addStretch();
	layout.addWidget(&upButton);
	layout.addSpacing(10);
	layout.addWidget(&deleteButton);

	setLayout(&layout);

	connect(&upButton, SIGNAL(click()), this, SLOT(moveUp()));
	connect(&deleteButton, SIGNAL(click()), this, SLOT(deleteCurSongFromOrderList()));
}

SongItemWidget::~SongItemWidget(void)
{
}

void SongItemWidget::paintEvent(QPaintEvent *enent)
{
#if 0
	QPainter painter(this);
	if(bkImage.isNull()){
		return;
	}
	painter.drawImage(QPoint(0,0),bkImage);
#endif
}

void SongItemWidget::moveUp()
{
	DbUtil::SetPriority(song.orderId);

	emit updateOrderedList();
}

void SongItemWidget::deleteCurSongFromOrderList()
{
	DbUtil::DeleteSongFromOrderList(song.orderId);
	SelectedSongListSubject::Instance()->notifyAll();
	emit updateOrderedList();
}



