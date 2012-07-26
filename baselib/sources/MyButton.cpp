#include "../headers/MyButton.h"
#include <QPalette>
#include <QBitmap>

MyButton::MyButton(const QString& name,QImage* p_image,int x,int y,QWidget *parent) : QWidget(parent,Qt::FramelessWindowHint){
	this->setCursor(Qt::PointingHandCursor);
	this->_name = name;
	this->_p_image = p_image;
	this->setGeometry(x,y,this->_p_image->width(),this->_p_image->height());
	this->_initial();
}

MyButton::MyButton(QImage* p_image,int x,int y, const QString& name,QWidget *parent) : QWidget(parent,Qt::FramelessWindowHint)
{
	this->setCursor(Qt::PointingHandCursor);
	this->_name = name;
	this->_p_image = p_image;
	this->setGeometry(x,y,this->_p_image->width(),this->_p_image->height());
	this->_initial();
}

MyButton::MyButton(int x,int y, const QString &_imagePath, QWidget *parent, const QString& name) 
: QWidget(parent,Qt::FramelessWindowHint)
{
	this->setCursor(Qt::PointingHandCursor);
	this->_name = name;
	this->_p_image = new QImage(_imagePath);
	this->setGeometry(x,y,this->_p_image->width(),this->_p_image->height());

	this->_initial();

	setVisible(true);
}

MyButton::MyButton(const ButtonItemParameter& param,QWidget *parent,QImage* p_image) : QWidget(parent,Qt::FramelessWindowHint){
	this->setCursor(Qt::PointingHandCursor);
	this->_name = param.Name();
	if(p_image)	this->_p_image = p_image;
	else this->_p_image = param.GetImage();
	this->setGeometry(param.Left(),param.Top(),this->_p_image->width(),this->_p_image->height());
	this->_initial();

	this->_x = param.Left();
	this->_y = param.Top();
}

MyButton::MyButton(const ButtonParameter& param,QWidget *parent,QImage* p_image) : QWidget(parent,Qt::FramelessWindowHint){
	this->setCursor(Qt::PointingHandCursor);
	this->_name = param.Name();
	if(p_image)	this->_p_image = p_image;
	else this->_p_image = param.GetImage();
	this->setGeometry(param.Left(),param.Top(),this->_p_image->width(),this->_p_image->height());
	this->_initial();

	this->_x = param.Left();
	this->_y = param.Top();

	QPalette pal = palette(); 
	pal.setColor(QPalette::Background, QColor(0xff,0,0, 0)); 
	setPalette(pal);

	/*scaleImage();*/
}

/* 调整图片大小符合widget区域 */
void MyButton::scaleImage()
{
	*(this->_p_image) = this->_p_image->scaled(size(), Qt::KeepAspectRatio, 
		Qt::SmoothTransformation);
}

MyButton::~MyButton(){
	delete this->_p_image;
	if(this->_p_font) delete this->_p_font;
	if(this->_p_pen) delete this->_p_pen;
}

void MyButton::_initial(){
	this->_p_font = 0;
	this->_p_pen = 0;
	this->_x = 0;
	this->_y = 0;
	this->_enabled = true;
}

QString MyButton::Name() const{
	return this->_name;
}

void MyButton::SetImage(QImage* p_image){
	if(this->_p_image) delete this->_p_image;
	this->_p_image = p_image;
	this->setGeometry(this->_x,this->_y
		,this->_p_image->width(),this->_p_image->height());
	this->update();
}
const QImage* MyButton::Image() const{
	return this->_p_image;
}

void MyButton::setImagePath(const QString &_path)
{
	_p_image->load(_path);
	update();
}


void MyButton::paintEvent(QPaintEvent *enent){
	QPainter painter(this);
	if(this->_p_image->isNull()){
		printf("MyButton::_p_image is NULL!\n");
		return;
	}

	painter.setOpacity(0.9);

	painter.drawImage(QPoint(0,0), *this->_p_image);

	if(!this->_text.isEmpty()){
		if(this->_p_font)	painter.setFont(*this->_p_font);
		if(this->_p_pen)	painter.setPen(*this->_p_pen);
		painter.drawText(this->_x,this->_y, this->_text);
	}

}
void MyButton::mousePressEvent(QMouseEvent *event){
	if(!this->IsEnabled()) return;
	emit click();
}

void MyButton::SetFont(QFont* p_font){
	if(this->_p_font) delete this->_p_font;
	this->_p_font = p_font;
}
void MyButton::SetPen(QPen* p_pen){
	if(this->_p_pen) delete this->_p_pen;
	this->_p_pen = p_pen;
}
void MyButton::SetText(const QString& text){
	this->_text = text;
	this->update();
}
void   MyButton::SetTextPoint(int x,int y){
	this->_x = x;
	this->_y = y;
}
bool MyButton::IsEnabled(){
	return this->_enabled;
}
void MyButton::Enabled(){
	this->_enabled = true;
	this->setCursor(Qt::PointingHandCursor);
}
void MyButton::Disabled(){
	this->_enabled = false;
	this->setCursor(Qt::ArrowCursor);
}

