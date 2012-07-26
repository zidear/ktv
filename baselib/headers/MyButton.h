#ifndef MYBUTTON_H_
#define MYBUTTON_H_
#include <QWidget>
#include <QImage>
#include <QPaintEvent>
#include <QMouseEvent>
#include <QPainter>
#include <QMessageBox>
#include <QFont>
#include <QPen>
#include "GlobalData.h"
#include "Config.h"
#include "../sources/ButtonParameter.h"


class MyButton : public QWidget{
	Q_OBJECT
protected:
	QImage *_p_image;
	QString _name;
	QFont* _p_font;
	QPen* _p_pen;
	QString _text;
	int _x;
	int _y;
	bool _enabled;
private:
	void _initial();
	void scaleImage();
public:
	MyButton(const QString& name,QImage* p_image,int x,int y,QWidget *parent = 0);
	MyButton(QImage* p_image,int x,int y, const QString& name = "", QWidget *parent = 0);
	MyButton(int x,int y, const QString &_imagePath, QWidget *parent = 0, const QString& name = "");
	MyButton(const ButtonItemParameter& param,QWidget *parent = 0,QImage* p_image = 0);
	MyButton(const ButtonParameter& param,QWidget *parent = 0,QImage* p_image = 0);

	QString Name() const;
	const QImage* Image() const;
	virtual ~MyButton();
	void DrawText();
	void SetFont(QFont* p_font);
	void SetPen(QPen* p_pen);
	void SetText(const QString& text);
	void SetTextPoint(int x,int y);
	bool IsEnabled();
	void Enabled();
	void Disabled();
	void SetImage(QImage* p_image);
	void setImagePath(const QString &_path);
protected:
	virtual void paintEvent(QPaintEvent *event);
	virtual void mousePressEvent(QMouseEvent *event);

signals:
	void click();
};

#endif /* MYBUTTON_H_ */
