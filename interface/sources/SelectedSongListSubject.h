#ifndef _SELECTED_SONG_LIST_SUBJECT_H_
#define _SELECTED_SONG_LIST_SUBJECT_H_

#include "Subject.h"
#include "../../Singleton.h"
#include "../../baselib/headers/DataStruct.h"

struct SelectedSongListSubject : public Subject
{
	DECLARE_SINGLETON(SelectedSongListSubject);
	
public:
	SelectedSongListSubject();

public:
	void updateDataBase(const SongStruct &_song);

};

#endif


