#include "PageLabel.h"

PageLabel::PageLabel(const QString &_text) 
: pageIndex(1), pageNum(1), QLabel(_text)
{
	QPalette pa;
	pa.setColor(QPalette::WindowText,Qt::white);
	setPalette(pa);
}

PageLabel::~PageLabel(void)
{
}


void PageLabel::changeCurrentPageIndex(int _pageOffset)
{
	pageIndex = _pageOffset + pageIndex;
	pageIndex = pageIndex < 1 ? 1 : pageIndex;
	pageIndex = pageIndex > pageNum ? pageNum : pageIndex;

	updateLabelText();
}

void PageLabel::setPageNum(int _pageNum)
{
	pageNum = _pageNum;
	updateLabelText();
}

void PageLabel::updateLabelText()
{
	setText(QString::number(pageIndex) + " / " + QString::number(pageNum));
}


