#include "interface/headers/KtvMainScreen.h"
#include "interface/KtvScreenController.h"
#include "sqlite/DbUtil.h"

#include <QtGui>
#include <QApplication>
#include <QTextCodec>
#include <QMetaType>
#include <QList>
#include "sqlite/DbUtil.h"

int main(int argc, char *argv[])
{
	qRegisterMetaType< QList<SongStruct> >("QList<SongStruct>");

#ifdef WIN32
	QTextCodec *codec = QTextCodec::codecForName("GBK");    /*获取系统编码*/
#else
	QTextCodec *codec = QTextCodec::codecForName("UTF-8");    /*获取系统编码*/
#endif

	QTextCodec::setCodecForTr(codec);
	QTextCodec::setCodecForCStrings(codec);
	
	DbUtil::UpdateSongLibrary();

	Q_INIT_RESOURCE(app);

    QApplication a(argc, argv);
    a.setApplicationName("KTV");
	/*a.setFont(QFont(GlobalData::CharacterFont));*/

	KtvMainScreen *p_mainScreen = new KtvMainScreen();
	
	KtvScreenController::GetController()->setMainScreen(p_mainScreen);
    p_mainScreen->display();

    
    int ret = a.exec();
	return ret;
}
