#ifndef _OBSERVER_H_
#define _OBSERVER_H_

struct Observer
{
	virtual ~Observer(){}
	virtual void updateData() = 0;
};


#endif


