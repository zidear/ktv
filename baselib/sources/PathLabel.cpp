#include "PathLabel.h"

const static QString TEXT_SEPERATOR = " > ";

PathLabel::PathLabel(const QString &_text, QWidget *_parent) 
: QLabel(_parent)
{
	QPalette pa;
	pa.setColor(QPalette::WindowText,Qt::white);
	setPalette(pa);

#if 0
	QFont labelFont;
	labelFont.setPointSize(12);
	labelFont.setBold(true);
	setFont(labelFont);
#endif
	setIndent(40);

	forwardPath(_text);
}

PathLabel::~PathLabel(void)
{
}

void PathLabel::forwardPath(const QString &_pathName)
{
	path.append(_pathName);

	QString chineseStr = path.join(TEXT_SEPERATOR);
	setText(chineseStr);
}

void PathLabel::backPath()
{
	path.pop_back();
	setText(path.join(TEXT_SEPERATOR));
}

