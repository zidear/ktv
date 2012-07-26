#ifndef BUTTON_MANAGER_H
#define BUTTON_MANAGER_H

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
#include "../../Singleton.h"
#include <QWidget>

class ConfigParser;
class QGraphicsScene;

class ButtonManager
{
public:
    ButtonManager();
    virtual ~ButtonManager();
    MyButton* FindButton(const QString& name) const;
    void AddButton(ConfigParser* p_config, QWidget *parent = 0,int buttonType = 0,QString* p_imageFile = 0);
	void AddRotateButton(ConfigParser* p_config, QGraphicsScene *_scene,QString* p_imageFile = 0);

	static int ItemTextToInt(const QString& str);

private:
	MyButton* createZeroPointButton(ButtonParameter zeroPointParam);

protected:
	QList<MyButton*> *_buttonList;
};

#endif 
