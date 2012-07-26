#ifndef _KTV_DIALOG_H_
#define _KTV_DIALOG_H_

#include <QWidget>
#include <QPixmap>
#include <QPropertyAnimation>

#include "../../baselib/headers/MyButton.h"

struct KTVDialog : public QWidget
{
	Q_OBJECT

public:
	KTVDialog(QWidget *_parent, Qt::WFlags flags = Qt::FramelessWindowHint);
	void setShowCoordinate(const QPoint &_point);
	void setBackgroundImage(const QString &_imagePath);

protected:
	void paintEvent(QPaintEvent *event);
	void showEvent(QShowEvent *event);

signals:
	void showDialog();

private:
	QPixmap backgroundImage;
	MyButton closeButton;
	QPropertyAnimation *animation;
};

#endif


