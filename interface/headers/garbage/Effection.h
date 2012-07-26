#ifndef EFFECTION_H_
#define EFFECTION_H_
#include "SongListTemplate.h"

class Effection : public SongListTemplate {
	DECLARE_SINGLETON(Effection);
public:
	Effection();
	virtual void ActionToDo();
	virtual void ItemClick();
};
#endif /* EFFECTION_H_ */
