#ifndef _FILTER_OBSERVER_H_
#define _FILTER_OBSERVER_H_

#include <QString>

#include "Observer.h"


struct FilterObserver : public Observer
{
	virtual ~FilterObserver(){}
	virtual void setFilter(const QString &_filtStr) = 0;
	virtual void setCondition(const QString &_filtStr) = 0;
};

struct FiltObserver
{
	virtual ~FiltObserver(){}
	virtual void updateData(QString _filter) = 0;
};


#endif


