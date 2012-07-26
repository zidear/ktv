#ifndef NEWESTSONGSCREEN_H_
#define NEWESTSONGSCREEN_H_
#include "SongListTemplate.h"
#include <QWidget>

class Newest : public SongListTemplate {
public:
	Newest();
	virtual void ActionToDo();
};
#endif /* NEWESTSONGSCREEN_H_ */
