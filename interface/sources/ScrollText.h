#ifndef SCROLLTEXT_H
#define SCROLLTEXT_H

#include <QString>
#include "../../Singleton.h"

class ScrollWidget;

class ScrollText
{
	DECLARE_SINGLETON(ScrollText)

public:
	ScrollText();
	~ScrollText();

	void setText(const QString &_text);
	void setObserver(ScrollWidget *_observer);

private:
	QString contentStr;
	ScrollWidget *observer;
};

#endif // SCROLLTEXT_H
