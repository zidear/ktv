#ifndef PINYINFILTERSCREEN_H_
#define PINYINFILTERSCREEN_H_
#include "SongListTemplate.h"

class Pinyin : public SongListTemplate {
protected:
	QString _txt;
public:
	Pinyin();
	virtual void ActionToDo();
};
#endif /* PINYINFILTERSCREEN_H_ */
