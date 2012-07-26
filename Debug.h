#ifndef D_H_
#define D_H_
#include <QFile>
#include <QString>
#include <QTextStream>

class D{
public:
	static void Print(int val){
		QFile* p_file = new QFile(QString("log.txt"));
		p_file->open(QIODevice::Append | QIODevice::Text);
		QTextStream indata(p_file);
		indata << val;
		indata << "   ";
		indata.flush();
		p_file->close();
		delete p_file;
	}
	static void Print(const QString& str){
		QFile* p_file = new QFile(QString("log.txt"));
		p_file->open(QIODevice::Append | QIODevice::Text);
		QTextStream indata(p_file);
		indata << str;
		indata << "\r\n";
		indata.flush();
		p_file->close();
		delete p_file;
	}
};
#endif /* DEBUG_H_ */
