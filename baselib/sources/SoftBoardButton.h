#ifndef _SOFT_BOARD_BUTTON_H_
#define _SOFT_BOARD_BUTTON_H_

#include <QWidget>
#include <QPixmap>
#include <QString>

class SoftBoardButton :
	public QWidget
{
	Q_OBJECT

public:
	SoftBoardButton(const QString &_buttonText, QWidget *parent);
	~SoftBoardButton(void);

	QString getSQLFilterStr() const;
	void setShowPoint(const QPoint &_point);
	QString getButtonText() const;

protected:
	virtual void paintEvent(QPaintEvent *event);
	virtual void mousePressEvent(QMouseEvent *event);

	QRect* getButtonTextRect(int _width, int _height);
	virtual void mouseReleaseEvent(QMouseEvent *event);

signals:
	void click();

private:
	QPixmap pressImage;
	QPixmap releaseImage;
	QPixmap *curImage;
	QString buttonText;

	QPoint releasePoint;
	QPoint pressPoint;

	QRect *buttonTextRect;
	QRect *pressButtonTextRect;
	QRect *releaseButtonTextRect;
};

#endif
