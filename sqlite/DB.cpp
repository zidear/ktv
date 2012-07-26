#include "DB.h"

DB::DB(){
	this->_dbName = "data/database/KTV_DB";
	Init();
}

DB::DB(const QString& _dbfile){
	this->_dbName = _dbfile;
	Init();
}

void DB::Init()
{
	this->_driverName = "QSQLITE";
	this->_db = QSqlDatabase::addDatabase(this->_driverName);
	this->_db.setDatabaseName(this->_dbName);
	this->Open();
	this->_query = QSqlQuery(this->_db);
}

void DB::SetQueryText(const QString& queryString){
	if(!this->_query.prepare(queryString))	throw "set query text error.";
}

void DB::BindParameter(const QString& placeholder,const QVariant& val, QSql::ParamType paramType){
	this->_query.bindValue(placeholder,val,paramType);
}

void DB::BindParameter(int pos,const QVariant& val,QSql::ParamType paramType){
	this->_query.bindValue(pos,val,paramType);
}

int DB::ExecuteNoQuery(){
	if(this->_query.exec())
		return this->_query.numRowsAffected ();
	else return -1;
}

QVariant DB::LastInsertId()const{
	return this->_query.lastInsertId ();
}

QSqlQuery DB::GetRecords() const{
	return this->_query;
}

QVariant DB::ExecuteScalar(){
	if(this->ExecuteNoQuery() == -1) throw "exec error.";
	if(!this->_query.next()) throw "exec return no data.";
	return this->_query.value(0);
}
bool DB::Open(){
	if(!this->_db.open()) throw "cannot open database.";
	return true;
}
