#include "ScrollText.h"
#include "ScrollWidget.h"

ScrollText::ScrollText()
{

}

ScrollText::~ScrollText()
{

}

void ScrollText::setObserver(ScrollWidget *_observer)
{
	observer = _observer;
}

void ScrollText::setText(const QString &_text)
{
	observer->changeContent(_text);
}


