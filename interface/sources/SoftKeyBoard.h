#ifndef _SOFT_KEY_BOARD_H_
#define _SOFT_KEY_BOARD_H_

#include <QLineEdit>
#include <QPushButton>
#include <QHBoxLayout>
#include "WidgetSubject.h"

class SoftBoardButton;
class KTVButton;

class SoftKeyBoard :
	public WidgetSubject
{
	Q_OBJECT

public:
	SoftKeyBoard(QWidget *_parent, Qt::WFlags flags = Qt::FramelessWindowHint);
	~SoftKeyBoard(void);

private:
	void addLetterButton(const QList<QString> &buttonNames, QPoint _startPoint);

private slots:
	void appendLetterToTextDisplayer();
	void deleteLastLetterFromTextDisplayer();
	void clearLastLetterFromTextDisplayer();
	void emitFiltSignal();

private:
	QSize letterButtonSize;
	int buttonInternal;
	QLineEdit textDisplayer;
	QList<SoftBoardButton*> buttonManager;
	QList<QString> lettersOfFirstColumn;
	QList<QString> lettersOfSecondColumn;
	QList<QString> lettersOfThirdColumn;
	KTVButton *deleteButton;
	KTVButton *clearButton;
	KTVButton *confirmButton;

	QHBoxLayout layout;
};

#endif
