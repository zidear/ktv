#ifndef _ITEM_DISPLAYER_H_
#define _ITEM_DISPLAYER_H_

#include "../headers/MainWindowView.h"
#include "../../baselib/sources/PathLabel.h"
#include "FilterObserver.h"
#include "ItemScrollAnimation.h"

#include <QLabel>
#include <QVBoxLayout>
#include <QStringList>

struct ItemSceneParameter;
struct PageLabel;
class KTVButton;

class ItemDisplayer : public QWidget, public FilterObserver, public FiltObserver{
	Q_OBJECT

public:
	ItemDisplayer(ItemSceneParameter *_sceneParam, QWidget *_parent);
	~ItemDisplayer();
	void setUpBottomWidgetAndConnection();
	void setFilter(const QString &_filtStr);
	void setCondition(const QString &_filtStr);
	void updateData();
	void updateData(QString _filter);

private:
	void _setupSignalConnection();
	void constructBottomWidget();
	void createFilterButton();

protected:
	virtual void addFilterButtons() = 0;
	virtual void createPrivateFilterButton() = 0;
	virtual void setPrivateSignalConnection() = 0;

public slots:
	void displayAllItems();
	void backView();

protected:
	PageLabel *pageLabel;
	PathLabel topwidget;
	QHBoxLayout bottomLayout;
	KTVButton *allButton;
	KTVButton *prePageButton;
	KTVButton *nextPageButton;
	KTVButton *backPageButton;

private:
	QVBoxLayout layout;
	ItemSceneParameter *sceneParam;
	MainWindowView itemView;	
	QString filtStr;
	ItemScrollAnimation itemsScrollAnimation;
};
#endif

