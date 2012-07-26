#ifndef PRIVATESONGSCREEN_H_
#define PRIVATESONGSCREEN_H_
#include "SongListTemplate.h"
#include "../KtvScreenController.h"
#include "Register.h"

class Private : public SongListTemplate {
public:
	Private();
	virtual void ActionToDo();
};
#endif /* PRIVATESONGSCREEN_H_ */
