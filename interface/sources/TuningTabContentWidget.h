#ifndef TUNINGTABCONTENTWIDGET_H
#define TUNINGTABCONTENTWIDGET_H

#include <QWidget>

class TuningTabContentWidget : public QWidget
{
	Q_OBJECT

public:
	TuningTabContentWidget(QWidget *parent);
	~TuningTabContentWidget();

protected:
	void paintEvent(QPaintEvent *event);

private:
	QPixmap bkImage;
};

#endif // TUNINGTABCONTENTWIDGET_H
