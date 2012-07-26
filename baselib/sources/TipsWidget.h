#ifndef _TIPS_WIDGET_H_
#define _TIPS_WIDGET_H_

#include <QWidget>
#include <QPixmap>
#include <QString>

class TipsWidget :
	public QWidget
{
	Q_OBJECT

public:
	TipsWidget(const QString &_imagePath, QWidget *parent);
	~TipsWidget(void);

	void setShowCoordinateInGlobal(const QPoint &_point);
	void setText(const QString &_text);

protected:
	virtual void paintEvent(QPaintEvent *event);

private:
	QPixmap curImage;
	QString text;
};

#endif

