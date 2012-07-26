#ifndef KTV_H
#define KTV_H
#include <QPaintEvent>
#include <QMouseEvent>
#include <QList>
#include <QPainter>
#include <QPoint>
#include <QImage>
#include <QFont>
#include <QPen>
#include <QRegExp>
#include "../../baselib/headers/MyButton.h"
#include "../../baselib/headers/Config.h"
#include "../../Singleton.h"
#include <QWidget>

class BaseTemplate /*: public MainInterface*/
{
protected:
	QList<MyButton*> *_buttonList;
public:
    BaseTemplate();
    virtual ~BaseTemplate();
    MyButton* FindButton(const QString& name) const;
    void AddButton(InterfaceConfig* p_config, QWidget *parent = 0,int buttonType = 0,QString* p_imageFile = 0);
    static int ItemTextToInt(const QString& str);
};

#endif // KTV_H
