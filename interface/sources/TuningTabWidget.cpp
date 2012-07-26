#include "TuningTabWidget.h"
#include <QPushButton>
#include "../../baselib/headers/GlobalData.h"

const QString BACKGROUND_IMAGE_PATH = IMAGE_PATH_PREFIX + "tuning/tuningbackground.png";
const QString SCENE_IMAGE_PATH = IMAGE_PATH_PREFIX + "tuning/scene.png";
const QString TUNING_IMAGE_PATH = IMAGE_PATH_PREFIX + "tuning/tuning.png";

TuningTabWidget::TuningTabWidget(QWidget *_parent)
: tabWidget(this), tuningWidget(&tabWidget), 
sceneWidget(&tabWidget), KTVDialog(_parent)
{
	setBackgroundImage(BACKGROUND_IMAGE_PATH);

	tabWidget.setGeometry(17, 30, 526, 260);

	tabWidget.addTab(&tuningWidget, TUNING_IMAGE_PATH);
	tabWidget.addTab(&sceneWidget, SCENE_IMAGE_PATH);
}

TuningTabWidget::~TuningTabWidget()
{

}



