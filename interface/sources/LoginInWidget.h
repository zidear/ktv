#ifndef LOGININWIDGET_H
#define LOGININWIDGET_H

#include "../../baselib/sources/KTVDialog.h"
#include "../../baselib/sources/KTVButton.h"
#include <QLineEdit>

class LoginInWidget : public KTVDialog
{
	Q_OBJECT
public:
	LoginInWidget(QWidget *_parent);
	~LoginInWidget();

	void constructButton(KTVButton *_button, const QFont &_font, 
		const QPoint &_point, const QString &_text);

private:
	void setupConnection();

private slots:
	void deleteCharacter();
	void setText();
	void login();

private:
	KTVButton numberOneButton;
	KTVButton numberTwoButton;
	KTVButton numberThreeButton;
	KTVButton numberFourButton;
	KTVButton numberFiveButton;
	KTVButton numberSixButton;
	KTVButton numberSevenButton;
	KTVButton numberEightButton;
	KTVButton numberNightButton;
	KTVButton numberZeroButton;
	KTVButton deleteButton;
	KTVButton confirmButton;

	QLineEdit lineEditor;
	QWidget *parent;
};

#endif // LOGININWIDGET_H
