#include <QTextStream>
#include "ConfigParser.h"
#include "../../Debug.h"
#include "ButtonParameter.h"

ConfigParser::ConfigParser(const QString& file){
	this->_file = file;
	this->_itemList = new QList<ButtonParameter*>();
	this->_readConfigFile(this->_file);
}

void ConfigParser::_readConfigFile(const QString& fileName){
	QFile* p_file = new QFile(fileName);
	if(!p_file->open(QIODevice::ReadOnly | QIODevice::Text)){
		D::Print("Cannot open file: " + fileName);
		return;
	}

	QTextStream indata(p_file);
	while(!indata.atEnd()){
		QString line =indata.readLine();
		ButtonParameter* p_bip = this->_parseParameter(line);
		this->_nameList.append(p_bip->Name());
		this->_itemList->append(p_bip);
	}
	p_file->close();
	delete p_file;
}

ButtonParameter* ConfigParser::_parseParameter(const QString& line){
	int equal_pos = line.indexOf('=');
	QString name = line.left(equal_pos);

	QString param   = line.right(line.size() - equal_pos - 1);

	QPoint point;
	point.setX(param.section(',', 0, 0).toInt());
	point.setY(param.section(',', 1, 1).toInt());

	return new ButtonParameter(name, point);
}

const QList<QString> ConfigParser::GetNameList() const{
	return this->_nameList;
}

const QList<ButtonParameter*> * ConfigParser::GetItemsList() const{
	return this->_itemList;
}

void ConfigParser::_dispose(){
	while(!this->_itemList->isEmpty()){
		delete this->_itemList->takeLast();
	}
	delete this->_itemList;
}
ConfigParser::~ConfigParser(){
	this->_dispose();
}


