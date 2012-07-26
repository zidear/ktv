#include "SelectedSongListSubject.h"
#include "../../sqlite/DbUtil.h"

SelectedSongListSubject::SelectedSongListSubject()
{

}

void SelectedSongListSubject::updateDataBase(const SongStruct &_song)
{
	DbUtil::AddSongToOrderList(_song);
	notifyAll();
}


