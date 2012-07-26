#include "TuningWidget.h"
#include "../../baselib/headers/GlobalData.h"

const QString SING_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/sing.png";
const QString ROCK_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/rock.png";
const QString LYRIC_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/lyric.png";
const QString POPULAR_BUTTON_IMAGE = IMAGE_PATH_PREFIX + "tuning/popular.png";

TuningWidget::TuningWidget(QWidget *parent)
: singButton(SING_BUTTON_IMAGE, this), lyricButton(LYRIC_BUTTON_IMAGE, this),
rockButton(ROCK_BUTTON_IMAGE, this), popularButton(POPULAR_BUTTON_IMAGE, this),
volumnLabel(this), mikeLabel(this), toneLabel(this),
TuningTabContentWidget(parent)
{
	volumnLabel.setString("90\n“Ù¡ø");
	volumnLabel.setShowCoordinate(QPoint(40, 20));

	mikeLabel.setString("+\n¬ÛøÀ");
	mikeLabel.setShowCoordinate(QPoint(120, 20));

	toneLabel.setString("0\n“Ùµ˜");
	toneLabel.setShowCoordinate(QPoint(200, 20));

	singButton.setPos(QPoint(330, 45));
	rockButton.setPos(QPoint(420, 45));
	lyricButton.setPos(QPoint(330, 100));
	popularButton.setPos(QPoint(418, 98));
}

TuningWidget::~TuningWidget()
{

}

