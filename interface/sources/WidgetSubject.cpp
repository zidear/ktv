#include "FilterSubject.h"
#include "WidgetSubject.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../baselib/sources/KTVDialog.h"

#include <QPainter>

WidgetSubject::WidgetSubject(QWidget *_parent, Qt::WFlags flags) 
: KTVDialog(_parent, flags)
{
}


#include "moc_WidgetSubject.cpp"

