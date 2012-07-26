#include "ServiceWidget.h"
#include <QPushButton>
#include "../../baselib/headers/GlobalData.h"

const QString VIP_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/vip.png";
const QString BROADCAST_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/broadcast.png";
const QString MOVIE_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/movie.png";
const QString BACKGROUND_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/background.png";
const QString DRINKS_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "Toolsicon/drinks.png";
const QString BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "Toolsicon/service.png";

ServiceWidget::ServiceWidget(QWidget *_parent)
: vipButton(VIP_BUTTON_IMAGE, this), broadcastButton(BROADCAST_BUTTON_IMAGE, this),
drinksButton(DRINKS_BUTTON_IMAGE, this), movieButton(MOVIE_BUTTON_IMAGE, this), 
backgroundButton(BACKGROUND_BUTTON_IMAGE, this), KTVDialog(_parent)
{
	setBackgroundImage(BACKGROUND_IMAGE_PATH);

	vipButton.setPos(QPoint(30, 25));
 	drinksButton.setPos(QPoint(160, 25));
 	broadcastButton.setPos(QPoint(290, 25));
 	movieButton.setPos(QPoint(420, 25));
 	backgroundButton.setPos(QPoint(550, 25));
}

ServiceWidget::~ServiceWidget()
{

}



