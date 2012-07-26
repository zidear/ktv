#ifndef TUNINGWIDGET_H
#define TUNINGWIDGET_H

#include "../../baselib/sources/KTVButton.h"
#include "TuningTabContentWidget.h"
#include "NumberAdjustLabel.h"
#include <QLabel>

class TuningWidget : public TuningTabContentWidget
{
	Q_OBJECT

public:
	TuningWidget(QWidget *parent);
	~TuningWidget();

private:
	NumberAdjustLabel volumnLabel;
	NumberAdjustLabel mikeLabel;
	NumberAdjustLabel toneLabel;

	KTVButton singButton;
	KTVButton lyricButton;
	KTVButton rockButton;
	KTVButton popularButton;	
};

#endif // TUNINGWIDGET_H
