#ifndef KTVTABWIDGET_H
#define KTVTABWIDGET_H

#include <QPair>
#include <QList>
#include <QTabWidget>

class KTVTabWidget : public QTabWidget
{
	Q_OBJECT

public:
	KTVTabWidget(QWidget *parent);

	~KTVTabWidget();

	int addTab(QWidget *page, const QString &icon);
	void setTabWidgetStyle();

private slots:
	void tabIconChange(int _index);

private:
	int currentTabIndex;
	QList< QPair<QString, QString> > tabList;
};

#endif // KTVTABWIDGET_H
