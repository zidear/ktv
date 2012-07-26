#ifndef _FILTER_SUBJECT_H_
#define _FILTER_SUBJECT_H_

#include <QVector>
#include "FilterObserver.h"

struct FilterSubject
{
	void registerObserver(FiltObserver *_observer)
	{
		observers.append(_observer);
	}

	void notifyAll(const QString &_sqlStr)
	{
		FiltObserver* curObserver;
		for (int observerIndex = 0; observerIndex < observers.size(); observerIndex++)
		{
			curObserver = observers[observerIndex];
			curObserver->updateData(_sqlStr);
		}
	}

protected:
	QVector<FiltObserver*> observers;
};




#endif


