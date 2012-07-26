#ifndef MAIN_WINDOWS_TOP_WIDGET_H_
#define MAIN_WINDOWS_TOP_WIDGET_H_

#include <QWidget>
#include "ButtonManager.h"
#include "ScrollWidget.h"
#include "ServiceMaskWidget.h"
#include "AtmosphereMaskWidget.h"

class QImage;

class MainWindowTopWidget : public QWidget{
	Q_OBJECT
private:
	void _setupSignalConnection();
public:
	MainWindowTopWidget(QWidget *parent = 0);
	void display(void);

public slots:
	void modifyScrollText(QString &_content);

private slots:
	void HomePage();
	void Atmosphere();
	void Service();

private:
	const QImage* _p_image;
	ButtonManager manager;
	ScrollWidget scrollWidget;
	ServiceMaskWidget serviceMaskWidget;
	AtmosphereMaskWidget atmosphereMaskWidget;
};
#endif /* MAIN_WINDOWS_TOP_WIDGET_H_ */
