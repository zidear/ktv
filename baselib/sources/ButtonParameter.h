#ifndef BUTTON_PARAMETER_H_
#define BUTTON_PARAMETER_H_

#include <QString>
#include <QPoint>
class QImage;

class ButtonParameter{
public:
	ButtonParameter();
	ButtonParameter(QString, QPoint _point);
	void SetTop(int);
	void SetLeft(int);
	void SetName(QString);
	int Top() const;
	int Left() const;
	QString Name() const;
	QImage* GetImage() const;

private:
	QString _name;
	int xCoordinate;
	int yCoordinate;
};
#endif /* BUTTON_ITEM_PARAMETER_H_ */
