#ifndef NUMBERADJUSTLABEL_H
#define NUMBERADJUSTLABEL_H

#include <QWidget>
#include <QLabel>
#include "../../baselib/sources/KTVButton.h"

class NumberAdjustLabel : public QWidget
{
	Q_OBJECT

public:
	NumberAdjustLabel(QWidget *parent);
	~NumberAdjustLabel();

	void setString(const QString &_text);
	void setShowCoordinate(const QPoint &_point);

private:
	QLabel label;

	KTVButton upButton;
	KTVButton downButton;

	const int width;
	const int height;
};

#endif // NUMBERADJUSTLABEL_H
