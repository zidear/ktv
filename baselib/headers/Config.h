#ifndef CONFIG_H_
#define CONFIG_H_
#include "GlobalData.h"
#include <QList>
#include <QString>
#include <QFile>
#include <QImage>
#include <QTextStream>

class ButtonItemParameter;
class InterfaceConfig{
private:
	QList<ButtonItemParameter*> * _itemList;
	QString _file;
	QList<QString> _nameList;
public:
	InterfaceConfig(const QString& file);
	~InterfaceConfig();
	const QList<ButtonItemParameter*> * GetItemsList() const;
	const QList<QString> GetNameList() const;
private:
	void _dispose();
	void _readConfigFile(const QString&);
	ButtonItemParameter* _parseParameter(const QString&);
};

class ButtonItemParameter{
public:
	ButtonItemParameter();
	ButtonItemParameter(QString,int,int);
	void SetTop(int);
	void SetLeft(int);
	void SetName(QString);
	int Top() const;
	int Left() const;
	QString Name() const;
	QImage* GetImage() const;
private:
	int _top;
	int _left;
	QString _name;
};
#endif /* CONFIG_H_ */
