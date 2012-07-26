#include "../headers/Config.h"
#include "../../Debug.h"

InterfaceConfig::InterfaceConfig(const QString& file){
	this->_file = file;
	this->_itemList = new QList<ButtonItemParameter*>();
	this->_readConfigFile(this->_file);
}

void InterfaceConfig::_readConfigFile(const QString& fileName){
	QFile* p_file = new QFile(fileName);
	if(!p_file->open(QIODevice::ReadOnly | QIODevice::Text)){
		D::Print("Cannot open file: " + fileName);
		return;
	}
	QTextStream indata(p_file);
	while(!indata.atEnd()){
		QString line =indata.readLine();
		ButtonItemParameter* p_bip = this->_parseParameter(line);
		this->_nameList.append(p_bip->Name());
		this->_itemList->append(p_bip);
	}
	p_file->close();
	delete p_file;
}

ButtonItemParameter* InterfaceConfig::_parseParameter(const QString& line){
	int equal_pos = line.indexOf('=');
	QString name = line.left(equal_pos);

	bool isok = false;

	QString param = line.right(line.size() - equal_pos - 1);
	int comma_pos = param.indexOf(',');
	int left = param.left(comma_pos).toInt(&isok,10);

	param = param.right(param.size() - comma_pos - 1);
	comma_pos = param.indexOf(',');
	int top = param.left(comma_pos).toInt(&isok,10);

	return new ButtonItemParameter(name,left,top);
}

const QList<QString> InterfaceConfig::GetNameList() const{
	return this->_nameList;
}

const QList<ButtonItemParameter*> * InterfaceConfig::GetItemsList() const{
	return this->_itemList;
}

void InterfaceConfig::_dispose(){
	while(!this->_itemList->isEmpty()){
		delete this->_itemList->takeLast();
	}
	delete this->_itemList;
}
InterfaceConfig::~InterfaceConfig(){
	this->_dispose();
}

/*************************************************************************************
 * class implement for class ButtonItemParameter
 */

ButtonItemParameter::ButtonItemParameter(){ }

ButtonItemParameter::ButtonItemParameter(QString name,int left,int top){
	this->_name = name;
	this->_left = left;
	this->_top = top;
}

void ButtonItemParameter::SetTop(int top){
	this->_top = top;
}
void ButtonItemParameter::SetLeft(int left){
	this->_left = left;
}
void ButtonItemParameter::SetName(QString name){
	this->_name = name;
}
int ButtonItemParameter::Top() const{
	return this->_top;
}
int ButtonItemParameter::Left() const{
	return this->_left;
}
QString ButtonItemParameter::Name() const{
	return this->_name;
}

QImage* ButtonItemParameter::GetImage() const{
	QImage* p_image = new QImage(IMAGE_PATH_PREFIX + this->Name() + ".png");
	if(p_image->isNull())
		D::Print("Image is null: " + IMAGE_PATH_PREFIX + this->Name() + ".png");
	return p_image;
}
