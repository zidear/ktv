#ifndef _WIDGET_SUBJECT_H_
#define _WIDGET_SUBJECT_H_

#include "FilterSubject.h"
#include "../../baselib/headers/MyButton.h"
#include "../../baselib/sources/KTVDialog.h"

struct WidgetSubject : public KTVDialog, public FilterSubject
{
	Q_OBJECT

public:
	WidgetSubject(QWidget *_parent, Qt::WFlags flags);

signals:
	void validFilter(QString _SQLStr);

protected:
	virtual void emitFiltSignal() = 0;

};

#endif


