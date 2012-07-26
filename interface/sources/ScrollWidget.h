#ifndef _MARQUEE_WIDGET_H_
#define _MARQUEE_WIDGET_H_

#include <QLabel>
#include <QImage>
#include <QFile>

class QTimer;

class ScrollWidget: public QLabel
{
    Q_OBJECT

public:
    ScrollWidget( QWidget* parent=0);
   ~ScrollWidget();

public:
	void changeRate(int _rate);
	void changeContent( const QString &str );

private:
	void paintEvent(QPaintEvent *event);
	void initScrollText();
	void readScrollTextFromFile(QFile &_file, QString &_content);
	void writeScrollTextToFile(QFile &_file, const QString &_content);

public slots:
	void timeoutslot();

private:
	int maxLen;
	QTimer *timer;
	int rate;
	int startPos;
	QImage bkImage;
	QString content;
};
#endif
