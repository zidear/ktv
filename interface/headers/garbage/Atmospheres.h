#ifndef ATMOSPHERES_H_
#define ATMOSPHERES_H_
#include "SongListTemplate.h"
#include "../../Singleton.h"
#include <Phonon/MediaObject>

class Atmospheres : public SongListTemplate{
	Q_OBJECT;
	DECLARE_SINGLETON(Atmospheres);
public:
	Atmospheres();
	virtual void ActionToDo();
	virtual void ItemClick();

	void Clear();
private:
	
	Phonon::MediaObject *_music;
};
#endif /* ATMOSPHERES_H_ */
