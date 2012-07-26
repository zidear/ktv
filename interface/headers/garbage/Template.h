#ifndef GENERALSCREENTEMPLATE_H_
#define GENERALSCREENTEMPLATE_H_
#include "BaseTemplate.h"
#include "../../baselib/headers/GlobalData.h"
#include <QFont>
#include <QPen>
#include <QList>
#include <QString>
#include <QWidget>

class Template : public QWidget, public BaseTemplate{
	Q_OBJECT;
protected:
	int _currentPage;
	int _totalPages;
	int posValue;
private:
	MyButton* _p_currentPageBut;
	MyButton* _p_totalPageBut;
public:
	Template(const QImage* p_image = &GlobalData::TemplateImage2);
	virtual void ShowCurrentPage();
	virtual void ShowTotalPages();	
	virtual void InitialPageZone(int currentPage=1,int totalPage=1);
	virtual void DisplayData();
	virtual void SetupSignalConnection(const QList<QString> nameList);
public:
	void SetupPageSignalConnection(void);

public slots:
	virtual void ActionToDo();
	virtual void NextPage();
	virtual void PreviousPage();

protected:
	void mouseMoveEvent(QMouseEvent *);
	void mousePressEvent(QMouseEvent *);
};
#endif /* GENERALSCREENTEMPLATE_H_ */
