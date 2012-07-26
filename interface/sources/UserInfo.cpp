#include "UserInfo.h"

const int INVALID_USER_ID = 0;

UserInfo::UserInfo() : userID(INVALID_USER_ID)
{

}

UserInfo::~UserInfo()
{

}

void UserInfo::setUserID(int _userID)
{
	userID = _userID;
}

bool UserInfo::isValid()
{
	return userID != INVALID_USER_ID;
}

int UserInfo::getUserID()
{
	return userID;
}

