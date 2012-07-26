#ifndef MAIN_WINDOW_BOTTOM_WIDGET_H_
#define MAIN_WINDOW_BOTTOM_WIDGET_H_

#include "../../baselib/headers/GlobalData.h"
#include "../KtvScreenController.h"
#include "../sources/ButtonManager.h"

#include <QWidget>
#include <QSlider>

#include "UserSongWidget.h"
#include "TuningMaskWidget.h"

class MainWindowBottomWidget : public QWidget{
	Q_OBJECT

private:
	void _setupSignalConnection();
public:
	MainWindowBottomWidget(QWidget *parent = 0);
	void display(void);

protected:
	void paintEvent(QPaintEvent *);

public slots:
	void playOrPause();
	void replay();
	void OriginalVoice();
	void NextSong();
	void tuneUp();
	void Silent();
	void volumnAdjust(int _volumn);

private:
	ButtonManager manager;
	QSlider *slider;
	QImage bkImge;
	int widgetHeight;
	UserSongWidget userSongsPanel;
	const int heightSpace;

	TuningMaskWidget tuningMaskWidget;
};


#endif /* MAIN_WINDOW_BOTTOM_WIDGET_H_ */
