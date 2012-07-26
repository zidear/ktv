#ifndef LANGUAGECATEGORYFILTERSCREEN_H_
#define LANGUAGECATEGORYFILTERSCREEN_H_
#include "SongListTemplate.h"
#include "../../baselib/headers/GlobalData.h"
#include "../../baselib/headers/DataStruct.h"
#include "../../sqlite/DbUtil.h"

class Language : public SongListTemplate {
public:
	Language();
	virtual void ActionToDo();
};
#endif /* LANGUAGECATEGORYFILTERSCREEN_H_ */
