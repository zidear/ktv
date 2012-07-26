#include "UserSongListWidget.h"
#include "../../baselib/headers/GlobalData.h"

#include <QPainter>
#include <stdio.h>

const QString USER_PANEL_BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/usersongpanelbackground.png";

UserSongListWidget::UserSongListWidget(QWidget *_parent, Qt::WFlags flags) 
: userSongLists(this), backgroundImage(USER_PANEL_BACKGROUND_IMAGE_PATH)
, QWidget(_parent, flags)
{
	setGeometry(750, 100, backgroundImage.width(), backgroundImage.height());
	setVisible(false);

	setAttribute(Qt::WA_TranslucentBackground);

	userSongLists.setGeometry(1, 20, 485, 465);
	//userSongLists.setAttribute(Qt::WA_TranslucentBackground);
	userSongLists.addTab(&sungSongWidget, tr("ÒÑ³ª"));
	userSongLists.addTab(&unsungSongWidget, tr("Î´³ª"));

	userSongLists.setStyleSheet("QTabWidget::pane { /* The tab widget frame */                          "
		"     border-top: 1px solid #C2C7CB;                                    "
		" }                                                                     "
		"                                                                       "
		" QTabWidget::tab-bar {                                                 "
		"     left: 5px; /* move to the right by 5px */                         "
		"																		"
		" }                                                                     "
		"                                                                       "
		" /* Style the tab using the tab sub-control. Note that                 "
		"     it reads QTabBar _not_ QTabWidget */                              "
		" QTabBar::tab {                                                        "
		"     background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,           "
		"                                 stop: 0 #E1E1E1, stop: 0.4 #DDDDDD,   "
		"                                 stop: 0.5 #D8D8D8, stop: 1.0 #D3D3D3);"
		"     border: 1px solid #C4C4C3;                                        "
		"     border-bottom-color: #C2C7CB; /* same as the pane color */        "
		"     border-top-left-radius: 4px;                                      "
		"     border-top-right-radius: 4px;                                     "
		"     min-width: 10px;                                                  "
		"     padding: 8px;                                                     "
		" }                                                                     "
		"                                                                       "
		" QTabBar::tab:selected, QTabBar::tab:hover {                           "
		"     background: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1,           "
		"                                 stop: 0 #fafafa, stop: 0.4 #f4f4f4,   "
		"                                 stop: 0.5 #e7e7e7, stop: 1.0 #fafafa);"
		" }                                                                     "
		);
}

UserSongListWidget::~UserSongListWidget(void)
{
	
}

void UserSongListWidget::paintEvent(QPaintEvent *event)
{
	printf("UserSongListWidget::paintEvent start!\n");

	QPainter painter(this);

	if (backgroundImage.isNull())
	{
		printf("UserSongListWidget::backgroundImage is NULL!\n");
		return;
	}

	painter.drawPixmap(QPoint(0, 0), backgroundImage);

	printf("UserSongListWidget::paintEvent end!\n");
}

void UserSongListWidget::leaveEvent(QEvent *event)
{
	hide();
}



