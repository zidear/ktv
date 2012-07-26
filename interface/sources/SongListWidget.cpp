#include <QListWidgetItem>
#include "SongListWidget.h"
#include "SongItemWidget.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DbUtil.h"

SongListWidget::SongListWidget(QWidget *_parent) : QListWidget(_parent)
{
	setGeometry(0, 0, 100, 100);

	setAttribute(Qt::WA_TranslucentBackground);
	setVisible(true);
}

SongListWidget::~SongListWidget(void)
{
	clearAllItems();
}

void SongListWidget::setSignalConnection()
{
}


void SongListWidget::clearAllItems()
{
	clear();

	clearWidgetItems();
}

void SongListWidget::clearWidgetItems()
{
	for (int songIndex = 0; songIndex < widgetItemManager.size(); songIndex++)
	{
		delete widgetItemManager[songIndex];
	}
}

void SongListWidget::updateSelectedSongItems()
{
	clearAllItems();

	QList<SelectedSong> selectedSongs = DbUtil::GetSelectedSong_Page();
	
	for (int songIndex = 0; songIndex < selectedSongs.size(); songIndex++)
	{
		addSongItem(selectedSongs[songIndex]);
	}	
}

void SongListWidget::addSongItem(SelectedSong &_song)
{
	SongItemWidget *itemWidget = new SongItemWidget(_song, this);

	connect(itemWidget, SIGNAL(updateOrderedList()), this, SLOT(updateSelectedSongItems()));

	addWidgetItem(itemWidget);
}

void SongListWidget::addWidgetItem(SongItemWidget *_widgetItem)
{
	QListWidgetItem *item = new QListWidgetItem(this);

	addItem(item);
	setItemWidget(item, _widgetItem);
	item->setSizeHint(_widgetItem->sizeHint());
}

void SongListWidget::showEvent(QShowEvent * event)
{
	updateSelectedSongItems();
	QWidget::showEvent(event);
}

