#include "ButtonParameter.h"
#include "../headers/GlobalData.h"
#include "../../Debug.h"

/*************************************************************************************
 * class implement for class ButtonParameter
 */

const static QString IMAGE_FILE_SUFFIX = ".png";

ButtonParameter::ButtonParameter(){ }

ButtonParameter::ButtonParameter(QString name, QPoint _point){
	_name = name;

	xCoordinate = _point.x();
	yCoordinate = _point.y();
}

void ButtonParameter::SetTop(int top){
	xCoordinate = top;
}
void ButtonParameter::SetLeft(int left){
	yCoordinate = left;
}
void ButtonParameter::SetName(QString name){
	_name = name;
}
int ButtonParameter::Top() const{
	return yCoordinate;
}
int ButtonParameter::Left() const{
	return xCoordinate;
}
QString ButtonParameter::Name() const{
	return _name;
}

QImage* ButtonParameter::GetImage() const{
	QImage* p_image = new QImage(IMAGE_PATH_PREFIX + this->Name() + IMAGE_FILE_SUFFIX);
	if(p_image->isNull())
		D::Print("Image is null: " + IMAGE_PATH_PREFIX + this->Name() + IMAGE_FILE_SUFFIX);
	return p_image;
}


