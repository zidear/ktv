#ifndef ORDERLISTSCREEN_H_
#define ORDERLISTSCREEN_H_
#include "SongListTemplate.h"

class Selected : public SongListTemplate {
	DECLARE_SINGLETON(Selected);
private:
	int _currentIndex;
public:
	Selected();
	virtual void ActionToDo();
	virtual void ItemClick();
};
#endif /* ORDERLISTSCREEN_H_ */
