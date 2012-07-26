#ifndef PREVIEW_MASKWIDGET_H
#define PREVIEW_MASKWIDGET_H

#include "MaskWidget.h"
#include "FilterSubject.h"
#include "PreviewWidget.h"
#include <QPropertyAnimation>

class PreviewMaskWidget : public QObject
{
	Q_OBJECT

public:
	PreviewMaskWidget(QWidget *_parent);

	~PreviewMaskWidget();

	void showSong(int _songID);

private:
	void setAnimationParam(const QPoint &_showPoint);

private:	
	MaskWidget maskWidget;
	PreviewWidget previewWidget;
	QPropertyAnimation animation;
};


#endif 
