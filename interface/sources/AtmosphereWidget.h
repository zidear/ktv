#ifndef _ATMOSPHERE_WIDGET_H
#define _ATMOSPHERE_WIDGET_H

#include <QWidget>
#include <QHBoxLayout>
#include "../../baselib/sources/KTVDialog.h"
#include "../../baselib/sources/KTVButton.h"

class AtmosphereWidget : public KTVDialog
{
	Q_OBJECT

public:
	AtmosphereWidget(QWidget *_parent);
	~AtmosphereWidget();

private:
	KTVButton praiseButton;
	KTVButton wooButton;
	KTVButton spoofButton;

	KTVButton softLightButton;
	KTVButton rockLightButton;
	KTVButton lyricLightButton;
	KTVButton brightLightButton;

};

#endif 
