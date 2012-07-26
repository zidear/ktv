#ifndef _KTV_BUTTON_H_
#define _KTV_BUTTON_H_

#include <QWidget>
#include <QPixmap>
#include <QString>
#include <QFont>

class KTVButton :
	public QWidget
{
	Q_OBJECT

public:
	KTVButton(const QString &_imagePath, QWidget *parent);
	~KTVButton(void);

	QString getSQLFilterStr() const;
	void setPos(const QPoint &_point);
	void setText(const QString &_text);
	QString getText();

protected:
	virtual void paintEvent(QPaintEvent *event);
	virtual void mousePressEvent(QMouseEvent *event);
	virtual void mouseReleaseEvent(QMouseEvent *event);

signals:
	void click();


private:
	QPixmap pressImage;
	QPixmap releaseImage;
	QPixmap *curImage;
	QString text;
};

#endif
