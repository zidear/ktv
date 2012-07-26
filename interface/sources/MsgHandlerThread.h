#ifndef MSGHANDLERTHREAD_H
#define MSGHANDLERTHREAD_H

#include <QThread>

class MsgHandlerThread : public QThread
{
	Q_OBJECT

public:
	MsgHandlerThread();
	~MsgHandlerThread();

	void run();

private:
	
};

#endif // MSGHANDLERTHREAD_H
