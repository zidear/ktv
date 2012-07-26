#include "ButtonManager.h"
#include "../../Debug.h"
#include "../../baselib/sources/ConfigParser.h"
#include "../../baselib/sources/ButtonParameter.h"


#include <QWidget>
#include <Qt>
#include <QGraphicsScene>
#include "../../embeddeddialogs/customproxy.h"

ButtonManager::ButtonManager()
{
	this->_buttonList = new QList<MyButton*>();
}

ButtonManager::~ButtonManager() {
	while(!this->_buttonList->isEmpty()){
		delete this->_buttonList->takeLast();
	}
	delete this->_buttonList;
}

void ButtonManager::AddButton(ConfigParser* p_config, QWidget *parent,int buttonType,QString* p_imageFile){
	const QList<ButtonParameter*>* p_lbip = p_config->GetItemsList();
	for(int i=0; i<p_lbip->size(); i++){
		ButtonParameter* p_bip = p_lbip->at(i);
		MyButton* p_mb;

		QImage* p_image = 0;
		if(p_imageFile){
			p_image = new QImage(*p_imageFile);
			if(p_image->isNull()){
				D::Print("Can not create image :" + (*p_imageFile));
				p_image = 0;
			}
		}

		if(buttonType == 0) p_mb = new MyButton(*p_bip,parent,p_image);

		this->_buttonList->append(p_mb);
	}
}

void ButtonManager::AddRotateButton(ConfigParser* p_config, QGraphicsScene *_scene,QString* p_imageFile){
	const QList<ButtonParameter*>* p_lbip = p_config->GetItemsList();
	CustomProxy *proxy = 0;
	MyButton* p_mb;
	QImage* p_image;
	ButtonParameter* p_bip;

	for(int i=0; i<p_lbip->size(); i++){
		p_bip = p_lbip->at(i);

		p_image = 0;
		if(p_imageFile){
			p_image = new QImage(*p_imageFile);
			if(p_image->isNull()){
				D::Print("Can not create image :" + (*p_imageFile));
				p_image = 0;
			}
		}

		p_mb = createZeroPointButton(*p_bip);

		proxy = new CustomProxy(0, Qt::FramelessWindowHint);
		proxy->setWidget(p_mb);
		proxy->setPos(p_bip->Left(), p_bip->Top());
		proxy->setCacheMode(QGraphicsItem::DeviceCoordinateCache);

		_scene->addItem(proxy);

		this->_buttonList->append(p_mb);
	}
}

MyButton* ButtonManager::createZeroPointButton(ButtonParameter zeroPointParam)
{
	zeroPointParam.SetLeft(0);
	zeroPointParam.SetTop(0);

	MyButton *button = new MyButton(zeroPointParam);
	

	return button;
}

MyButton* ButtonManager::FindButton(const QString& name) const{
	MyButton* p_mb = 0;
	for(int i=this->_buttonList->size() - 1; i >= 0; i--){
		if(this->_buttonList->at(i)->Name() == name){
			p_mb = (*(this->_buttonList))[i];
			break;
		}
	}
	return p_mb;
}

int ButtonManager::ItemTextToInt(const QString& str){
	QRegExp rx("(\\d{1,2})");
	int pos = rx.indexIn(str);
	if(pos > -1)
		return rx.cap(1).toInt();
	else return -1;
}

