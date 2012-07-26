#include "StarKindWidget.h"
#include <QPushButton>

StarKindWidget::StarKindWidget(QWidget *_parent)
: WidgetSubject(_parent, Qt::FramelessWindowHint)
{
	HKFemaleStar = new QPushButton("��̨Ů��", this);
	HKMaleStar = new QPushButton("��̨����", this);
	ChinaFemaleStar = new QPushButton("��½Ů��", this);
	ChinaMaleStar = new QPushButton("��½����", this);
	ForeignStar = new QPushButton("�������", this);
	SingerGroup = new QPushButton("�ֶ����", this);


	layout.addWidget(HKFemaleStar, 0, 0);
	layout.addWidget(HKMaleStar, 0, 1);
	layout.addWidget(ChinaFemaleStar, 1, 0);
	layout.addWidget(ChinaMaleStar, 1, 1);
	layout.addWidget(ForeignStar, 2, 0);
	layout.addWidget(SingerGroup, 2, 1);

	setLayout(&layout);

	setupSignalConnection();
}

StarKindWidget::~StarKindWidget()
{
	delete HKFemaleStar;
	delete HKMaleStar;
	delete ChinaFemaleStar;
	delete ChinaMaleStar;
	delete ForeignStar;
	delete SingerGroup;
}

void StarKindWidget::setupSignalConnection()
{
	connect(HKFemaleStar, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
	connect(HKMaleStar, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
	connect(ChinaFemaleStar, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
	connect(ChinaMaleStar, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
	connect(ForeignStar, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
	connect(SingerGroup, SIGNAL(clicked()), this, SLOT(emitFiltSignal()));
}

void StarKindWidget::emitFiltSignal()
{
	QPushButton *button = dynamic_cast<QPushButton*>(this->sender());
	emit validFilter(button->text());
}


