#include <QWidget>
#include <QScrollBar>
#include "ItemDisplayer.h"
#include "ItemSceneParameter.h"
#include "../../baselib/sources/KTVButton.h"
#include "../../baselib/sources/PageLabel.h"
#include "../../baselib/sources/KTVButton.h"
#include "../KtvScreenController.h"
#include "../../baselib/headers/GlobalData.h"
#include "ItemScreenGlobal.h"

ItemDisplayer::ItemDisplayer(ItemSceneParameter *_sceneParam, QWidget *_parent) 
: filtStr(""), sceneParam(_sceneParam), itemView(sceneParam, this)
, topwidget(tr("µã¸è"), this)
, itemsScrollAnimation(itemView.horizontalScrollBar(), _sceneParam, VIEW_WIDTH)
, QWidget(_parent, Qt::FramelessWindowHint) 
{
	layout.addWidget(&topwidget);
	layout.addWidget(&itemView);
	layout.addLayout(&bottomLayout);

	itemView.setGeometry(0, 0, VIEW_WIDTH, 500);
	itemView.centerOn(0, 0);

	setLayout(&layout);

	setGeometry(0, 85, 1280, 570);
	setVisible(false);
}

void ItemDisplayer::setUpBottomWidgetAndConnection()
{
	constructBottomWidget();
	_setupSignalConnection();
	setPrivateSignalConnection();
}

ItemDisplayer::~ItemDisplayer()
{
	delete allButton;
	delete prePageButton;
	delete pageLabel;
	delete nextPageButton;
	delete backPageButton;
}

void ItemDisplayer::displayAllItems()
{
	itemView.centerOn(0, 0);

	sceneParam->clearItems();
	sceneParam->displayAllItems();
}

void ItemDisplayer::createFilterButton()
{
	allButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/all.png", 0);
	prePageButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/previouspage.png", 0);
	pageLabel = new PageLabel("1 / 1");
	nextPageButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/nextpage.png", 0);
	backPageButton = new KTVButton(IMAGE_PATH_PREFIX + "Toolsicon/return.png", 0);
}

void ItemDisplayer::constructBottomWidget()
{
	createFilterButton();
	createPrivateFilterButton();

	
	bottomLayout.addSpacing(50);
	bottomLayout.addWidget(allButton);
	addFilterButtons();
	bottomLayout.addStretch();
	bottomLayout.addWidget(prePageButton);
	bottomLayout.addSpacing(50);
	bottomLayout.addWidget(pageLabel);
	bottomLayout.addSpacing(50);
	bottomLayout.addWidget(nextPageButton);
	bottomLayout.addSpacing(50);
	bottomLayout.addWidget(backPageButton);
	bottomLayout.addSpacing(50);
}

void ItemDisplayer::_setupSignalConnection(){
	connect(allButton, SIGNAL(click()), this, SLOT(displayAllItems()));
	connect(prePageButton, SIGNAL(click()), &itemsScrollAnimation, SLOT(backward()));
	connect(nextPageButton, SIGNAL(click()), &itemsScrollAnimation, SLOT(forward()));
	connect(backPageButton, SIGNAL(click()), this, SLOT(backView()));
	connect(&itemView, SIGNAL(currentPageChange(int)), 
		pageLabel, SLOT(changeCurrentPageIndex(int)));
}

void ItemDisplayer::backView()
{
	KtvScreenController::GetController()->Back();
}

void ItemDisplayer::setFilter(const QString &_filtStr)
{
	filtStr = _filtStr;
}

void ItemDisplayer::setCondition(const QString &_filtStr)
{
	filtStr = filtStr.arg(_filtStr);
}

void ItemDisplayer::updateData()
{
	sceneParam->updateScene(filtStr);
}

void ItemDisplayer::updateData(QString _filter)
{
	sceneParam->updateScene(_filter);
}



