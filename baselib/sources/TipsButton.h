#ifndef _TIPS_BUTTON_H_
#define _TIPS_BUTTON_H_

#include <QWidget>
#include <QPixmap>
#include <QString>

class TipsWidget;

class TipsButton :
	public QWidget
{
	Q_OBJECT

public:
	TipsButton(TipsWidget *_tipsWidget, const QString &_buttonText, QWidget *_parent, const QString &_imagePath = "");
	~TipsButton(void);

	QString text() const;

protected:
	virtual void paintEvent(QPaintEvent *event);
	virtual void mousePressEvent(QMouseEvent *event);
	virtual void mouseReleaseEvent(QMouseEvent *event);

signals:
	void click();

private:
	QPixmap curImage;
	TipsWidget *tipsWidget;
	QString buttonText;
};

#endif

