#ifndef _SUBJECT_H_
#define _SUBJECT_H_

#include <QVector>
#include "Observer.h"

struct Subject
{
	void registerObserver(Observer *_observer)
	{
		observers.append(_observer);
	}

	void notifyAll()
	{
		for (int observerIndex = 0; observerIndex < observers.size(); observerIndex++)
		{
			observers[observerIndex]->updateData();
		}
	}

protected:
	QVector<Observer*> observers;
};

#endif


