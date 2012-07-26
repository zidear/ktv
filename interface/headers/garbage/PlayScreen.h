#ifndef PLAYSCREEN_H_
#define PLAYSCREEN_H_
#include "../../baselib/headers/GlobalData.h"
#include "../headers/Template.h"
#include <Phonon/VideoPlayer>
#include <QObject>
#include "../phonon_mplayer/VideoWidget.h"

class PlayScreen : public Template{
	Q_OBJECT;
	DECLARE_SINGLETON(PlayScreen);
public:
	PlayScreen();
	void Silent();

private:
	Phonon::MPlayer::VideoWidget *_player;
	QTimer * _timer;
	Phonon::MPlayer::MediaObject* mediaObj;

public:
	//Phonon::VideoPlayer *GetPlayer() { return _player; }
public slots:
	//void CheckPlaying();

};
#endif /* MAINSCREEN_H_ */
