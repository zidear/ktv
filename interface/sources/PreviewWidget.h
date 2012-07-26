#ifndef PREVIEWWIDGET_H
#define PREVIEWWIDGET_H

#include "../../baselib/sources/KTVDialog.h"
#include "../../baselib/sources/KTVButton.h"
#include "LoginInMaskWidget.h"

#include <QPropertyAnimation>

class PreviewWidget : public KTVDialog
{
	Q_OBJECT
public:
	PreviewWidget(QWidget *parent);
	~PreviewWidget();

	void setSongID(int _songID);

private slots:
	void collectSong();

private:
	void setupConnection();

private:
	KTVButton collectionButton;
	KTVButton songButton;
	KTVButton insertSongButton;
	
	int songID;

	LoginInMaskWidget loginInMaskWidget;
};

#endif // PREVIEWWIDGET_H
