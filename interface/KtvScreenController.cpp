#include "KtvScreenController.h"

KtvScreenController* KtvScreenController::_p_ktv_ctl = 0;

KtvScreenController::KtvScreenController(){
	this->_p_screens = new QStack<QWidget*> ();
	this->_p_widget = 0;
}
KtvScreenController::~KtvScreenController(){
}

/* 换一种Widget(画布)*/
void KtvScreenController::Forward(QWidget* p_widget){
	if (!p_widget)
	{
		return;
	}

	if(!this->_p_screens->isEmpty())
		this->_p_screens->top()->hide();
	this->_p_screens->push(p_widget);
	p_widget->show();
}

/* 替换_p_screens的top widget(每次在用的就是top widget)*/
/* _p_widget保存前一次的_p_screens的top widget*/
void KtvScreenController::Replace(QWidget* p_widget){
	if(!this->_p_screens->isEmpty()){
		this->_p_screens->top()->hide();
		this->_p_widget = this->_p_screens->pop();
	}
	this->_p_screens->push(p_widget);
	p_widget->show();
}

/* 单件模式*/
KtvScreenController* KtvScreenController::GetController(){
	if(!KtvScreenController::_p_ktv_ctl)
		KtvScreenController::_p_ktv_ctl = new KtvScreenController();
	return KtvScreenController::_p_ktv_ctl;
}

/*退回栈的下一个widget*/
void KtvScreenController::Back(){
	if(this->_p_screens->size() > 1){
		this->_p_screens->top()->hide();
		this->_p_widget = this->_p_screens->pop();
		this->_p_screens->top()->show();
	}
}

/*把栈最上面两元素交换*/
void KtvScreenController::Toggle(){
	if(this->_p_screens->size() < 2) return;
	QWidget* p_widget1 = this->_p_screens->pop();
	p_widget1->hide();
	QWidget* p_widget2 = this->_p_screens->pop();
	p_widget2->show();
	this->_p_screens->push(p_widget1);
	this->_p_screens->push(p_widget2);
}

/*显示栈底最后一个元素，其它元素删掉*/
void KtvScreenController::Home(){
	if(this->_p_screens->size() < 2) return;
	while(this->_p_screens->size() > 1){
		this->_p_widget = this->_p_screens->pop();
		this->_p_widget->hide();
	}
	this->_p_screens->top()->show();
}

void KtvScreenController::setMainScreen(QWidget* p_mainScreen)
{
	_p_mainScreen = p_mainScreen;
}

QWidget* KtvScreenController::getMainScreen(void)
{
	return _p_mainScreen;
}