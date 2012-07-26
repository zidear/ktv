#ifndef KTVSCREENCONTROLLER_H_
#define KTVSCREENCONTROLLER_H_
#include <QWidget>
#include <QStack>

class KtvScreenController{
private:
	static KtvScreenController* _p_ktv_ctl;
	KtvScreenController();
	QStack<QWidget*>* _p_screens;
	QWidget* _p_widget;
	QWidget* _p_mainScreen;
public:
	~KtvScreenController();
	static KtvScreenController* GetController();
	void setMainScreen(QWidget*);
	QWidget* getMainScreen(void);
	void Forward(QWidget*);
	void Replace(QWidget*);
	void Back();
	void Toggle();
	void Home();
	QWidget* GetWidget(){ return _p_screens->top(); }
};
#endif /* KTVSCREENCONTROLLER_H_ */
