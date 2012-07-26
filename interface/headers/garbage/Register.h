#ifndef REGISTER_H_
#define REGISTER_H_
#include "SongListTemplate.h"
#include "../KtvScreenController.h"
#include "../../sqlite/DbUtil.h"

#include <QFont>
#include <QPen>

class Register : public SongListTemplate {
protected:
	QString _txt1;
	QString _txt2;
	int _currentItem;
	QString _type;
public:
	Register(QString type = "register");
	virtual void ActionToDo();
};
#endif /* REGISTER_H_ */
