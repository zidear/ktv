#include "KTVTabWidget.h"
#include "AssertDefine.h"

KTVTabWidget::KTVTabWidget(QWidget *parent)
	: currentTabIndex(0), QTabWidget(parent)
{
	setTabWidgetStyle();

	connect(this, SIGNAL(currentChanged(int)), this, SLOT(tabIconChange(int)));
}

KTVTabWidget::~KTVTabWidget()
{

}

int KTVTabWidget::addTab(QWidget *page, const QString &iconPath)
{
	setIconSize(QImage(iconPath).size());
	tabList.append(QPair<QString, QString>(iconPath, QString(iconPath).replace(QString(".png"), QString("_1.png"))));

	return QTabWidget::addTab(page, QIcon(iconPath), "");
}

void KTVTabWidget::tabIconChange(int _index)
{
	V_ASSERT((_index >= 0) && (_index < tabList.size()));

	setTabIcon(currentTabIndex, QIcon(tabList.value(currentTabIndex).first));
	setTabIcon(_index, QIcon(tabList.value(_index).second));

	currentTabIndex = _index;
}

void KTVTabWidget::setTabWidgetStyle()
{
	setStyleSheet("QTabWidget::pane { /* The tab widget frame */                          "
		"     border-top: 0px #C2C7CB;                                    "
		" }                                                                     "
		"                                                                       "
		" QTabWidget::tab-bar {                                                 "
		"     left: 18px; /* move to the right by 5px */                         "
		"																		"
		" }                                                                     "
		"                                                                       "
		" /* Style the tab using the tab sub-control. Note that                 "
		"     it reads QTabBar _not_ QTabWidget */                              "
		" QTabBar::tab {                                                        "
		"     border-top-left-radius: 4px;                                      "
		"     border-top-right-radius: 4px;                                     "
		"     min-width: 10px;                                                  "
		"     padding: 0px;                                                     "
		" }                                                                     "
		);
}

