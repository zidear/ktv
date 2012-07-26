#include "AtmosphereWidget.h"
#include <QPushButton>
#include "../../baselib/headers/GlobalData.h"

const QString PRAISE_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/praise.png";
const QString WOO_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/woo.png";
const QString SPOOF_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/spoof.png";
const QString SOFT_LIGHT_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/softlight.png";
const QString ROCK_LIGHT_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/rocklight.png";
const QString LYRIC_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/lyriclight.png";
const QString BRIGHT_LIGHT_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/brightlight.png";
const QString BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/atmosphere.png";


AtmosphereWidget::AtmosphereWidget(QWidget *_parent)
: praiseButton(PRAISE_BUTTON_IMAGE, this), wooButton(WOO_BUTTON_IMAGE, this),
spoofButton(SPOOF_BUTTON_IMAGE, this), softLightButton(SOFT_LIGHT_BUTTON_IMAGE, this), 
rockLightButton(ROCK_LIGHT_BUTTON_IMAGE, this), lyricLightButton(LYRIC_BUTTON_IMAGE, this),
brightLightButton(BRIGHT_LIGHT_BUTTON_IMAGE, this)
, KTVDialog(_parent)
{
	setBackgroundImage(BACKGROUND_IMAGE_PATH);

	praiseButton.setPos(QPoint(50, 70));
	wooButton.setPos(QPoint(155, 70));
	spoofButton.setPos(QPoint(260, 70));

	softLightButton.setPos(QPoint(390, 75));
	rockLightButton.setPos(QPoint(470, 75));
	lyricLightButton.setPos(QPoint(390, 128));
	brightLightButton.setPos(QPoint(470, 128));
}

AtmosphereWidget::~AtmosphereWidget()
{

}



