#ifndef MASKWIDGET_H
#define MASKWIDGET_H

#include <QWidget>

class MaskWidget : public QWidget
{
	Q_OBJECT
public:
	MaskWidget(QWidget *parent);
	~MaskWidget();

protected:
	void mouseReleaseEvent(QMouseEvent *event);
	void showEvent( QShowEvent * event );
};

#endif 
