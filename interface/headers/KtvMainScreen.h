#ifndef MAINSCREEN_H_
#define MAINSCREEN_H_

#include "../../baselib/headers/GlobalData.h"
#include "../KtvScreenController.h"
#include "../sources/ButtonManager.h"
#include "../sources/MainWindowTopWidget.h"
#include "../sources/MainWindowBottomWidget.h"
#include "../headers/MainWindowView.h"

#ifndef WIN32
#include "../../player/PlayScreen.h"
#endif

#include <QtGui/QMainWindow>
#include <QString>

struct HomeSceneParameter;
class CoverWidget;
class QPixmap;

class KtvMainScreen : public QMainWindow{
public:
	KtvMainScreen(QWidget *parent = 0);
	~KtvMainScreen();
	void display(void);

protected:
	void paintEvent(QPaintEvent *);
	void mouseDoubleClickEvent(QMouseEvent *);
	void mousePressEvent(QMouseEvent *);


private:
	const QString imagePath;
	QPixmap *_p_image;
	MainWindowTopWidget *topWidget;
	MainWindowBottomWidget *bottomWidget;
	ButtonManager manager;
	HomeSceneParameter *mainWindowParameter;
	MainWindowView *mainWidget;

#ifndef WIN32
//	PlayScreen playScreen;
#endif
};
#endif /* MAINSCREEN_H_ */
