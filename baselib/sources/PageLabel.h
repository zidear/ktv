#ifndef _PAGE_LABEL_H_
#define _PAGE_LABEL_H_

#include <QLabel>

struct PageLabel :
	public QLabel
{
	Q_OBJECT

public:
	PageLabel(const QString &_text);
	~PageLabel(void);
	
public slots:
	void changeCurrentPageIndex(int _pageOffset);
	void setPageNum(int _pageNum);

private:
	void updateLabelText();

private:
	int pageIndex;
	int pageNum;
};

#endif

