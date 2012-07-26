#ifndef USERINFO_H
#define USERINFO_H

#include "../../Singleton.h"

class UserInfo
{
	DECLARE_SINGLETON(UserInfo);

public:
	UserInfo();
	~UserInfo();

	void setUserID(int _userID);
	int getUserID();
	bool isValid();

private:
	int userID;	
};

#endif // USERINFO_H
