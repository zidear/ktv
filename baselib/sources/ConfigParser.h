#ifndef CONFIG_PARSER_H_
#define CONFIG_PARSER_H_

#include "../headers/GlobalData.h"
#include <QList>
#include <QString>
#include <QFile>
#include <QImage>
#include <QTextStream>

class ButtonParameter;
class ConfigParser{
private:
	QList<ButtonParameter*> * _itemList;
	QString _file;
	QList<QString> _nameList;
public:
	ConfigParser(const QString& file);
	~ConfigParser();
	const QList<ButtonParameter*> * GetItemsList() const;
	const QList<QString> GetNameList() const;
private:
	void _dispose();
	void _readConfigFile(const QString&);
	ButtonParameter* _parseParameter(const QString&);
};

#endif /* CONFIG_H_ */
