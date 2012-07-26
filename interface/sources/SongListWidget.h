#ifndef _SONG_LIST_WIDGET_H_
#define _SONG_LIST_WIDGET_H_

#include <QWidget>
#include <QListWidget>

class SongItemWidget;
class QListWidgetItem;
struct SelectedSong;

class SongListWidget :
	public QListWidget
{
	Q_OBJECT
public:
	SongListWidget(QWidget *_parent = 0);
	~SongListWidget(void);

private:
	void addWidgetItem(SongItemWidget *_widgetItem);
	void addSongItem(SelectedSong& _song);
	void clearWidgetItems();
	void clearAllItems();
	void setSignalConnection();

private slots:
	void updateSelectedSongItems();

protected:
	void showEvent(QShowEvent * event);

private:
	QVector<SongItemWidget*> widgetItemManager;
};

#endif
