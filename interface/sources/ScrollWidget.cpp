#include <QTimer>
#include <QPaintEvent>
#include <QPainter>
#include <QFile>
#include <QTextStream>
#include "ScrollWidget.h"
#include "../../baselib/headers/GlobalData.h"
#include "ScrollText.h"

const QString BACKGROUND_IMAGE_PATH =  IMAGE_PATH_PREFIX + "MainScreen/scrollscreen.png";

const QString SCROLL_TEXT_FILE_PATH = "ScrollTextFile";

ScrollWidget::ScrollWidget( QWidget* parent)
:startPos(0), rate(500), bkImage(BACKGROUND_IMAGE_PATH), 
QLabel(parent)
{
	timer = new QTimer(this);
	connect(timer,SIGNAL(timeout()),this,SLOT(timeoutslot()));
	timer->start(rate);

	setVisible(true);
	setGeometry(350, 0, bkImage.width(), bkImage.height());

	ScrollText::Instance()->setObserver(this);

	initScrollText();
}

ScrollWidget::~ScrollWidget()
{
}

void ScrollWidget::paintEvent(QPaintEvent *event)
{
	QPainter painter(this);
	QPen thickPen(Qt::white, 2);
	painter.setPen(thickPen);
	painter.setOpacity(0.99);

	painter.drawImage(0, 0, bkImage);
	painter.drawText(width() - startPos, 20, content);
}

void ScrollWidget::initScrollText()
{
	QFile file(SCROLL_TEXT_FILE_PATH);
	QString content = tr("------------欢迎使用风贝KTV软件----------------");

	if (!file.exists())
	{
		writeScrollTextToFile(file, content);
	}
	else
	{
		readScrollTextFromFile(file, content);
	}
	
	changeContent(content);
	file.close();
}

void ScrollWidget::timeoutslot()
{
	startPos += 10;

	if( startPos > maxLen )
	{
		startPos = 0;
	}

	update();
}

void ScrollWidget::changeRate( int _rate )
{
	rate = _rate;
	if( timer ) timer->setInterval(rate); 
}

void ScrollWidget::changeContent(const QString &_content)
{
	content = _content;
	maxLen = fontMetrics().width(content) + width();
	startPos = 0;
	timeoutslot();
}

void ScrollWidget::writeScrollTextToFile(QFile &_file, 
										 const QString &_content)
{
	if(!_file.open(QIODevice::Truncate | QFile::WriteOnly | QIODevice::Text))
	{
		qWarning("error write::open txt->file.open\n");
		return;
	}

	QTextStream stream(&_file);
	stream << _content;
}

void ScrollWidget::readScrollTextFromFile(QFile &_file, 
										  QString &_content)
{
	if(!_file.open(QIODevice::ReadOnly | QIODevice::Text))
	{
		qWarning("error read::open txt->file.open\n");
		return;
	}

	QTextStream stream(&_file);
	stream >> _content;
}