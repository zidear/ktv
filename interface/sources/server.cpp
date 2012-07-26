// Server.c
//

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <netinet/in.h>
#include <stddef.h>
#include "server.h"

/**************************************宏定义************************************************/

#define R_ASSERT(expr, ret) if(!(expr)){perror(#expr);return (ret);}
#define SET_MSG_LENGTH(buf, length) {*(unsigned short*)(buf) = htons(length);}

#define BUFSIZE 1000
#define PACKET_LENGTH_FIELD_OFFSET 2

#define QUERY_SINGER_INFO_MSG_TYPE 0X11
#define QUERY_SONG_INFO_MSG_TYPE   0X12
#define SELECTED_SONG_INFO_MSG_TYPE 0X13
#define VOLUMN_CHANGE_MSG_TYPE     0X14
#define SWITCH_SONG_MSG_TYPE         0X15
#define ADJUST_SONG_POS_MSG_TYPE   0X16

#define QUERY_SINGER_INFO_RSP_MSG_TYPE 0X21
#define QUERY_SONG_INFO_RSP_MSG_TYPE   0X22
#define SELECTED_SONG_INFO_RSP_MSG_TYPE 0X23
#define VOLUMN_CHANGE_RSP_MSG_TYPE     0X24
#define SWITCH_SONG_RSP_MSG_TYPE         0X25
#define ADJUST_SONG_POS_RSP_MSG_TYPE   0X26


/*********************************************************************************************/
/*****************************************类型定义********************************************/

#pragma pack(1)

typedef struct
{
	unsigned char cmd;
	unsigned int  bodyLen;
	char body[1];
}COMMON_MSG_HEAD;

typedef int (*HANDLE)(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
typedef int (*EXECUTE)(char* _condition, unsigned int _conditionLen, char* _info, unsigned int _infoLen);
typedef struct  
{
    unsigned int cmd;
    HANDLE handle;
	EXECUTE execute;
}HANDLER;

#pragma pack()

/*********************************************************************************************/
/**********************************声明*******************************************************/
int Default_handle(char* _condition, unsigned int _conditionLen, char* _info, unsigned int _infoLen);
int Handler_HandleQuerySingerInfo(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
int Handler_HandleQuerySongInfo(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
int Handler_HandleSelectedSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
int Handler_HandleChangeVolumn(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
int Handler_HandleSwitchSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen);
int Handler_HandleInsertSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen);

/*********************************************************************************************/

/**********************************全局变量***************************************************/

HANDLER msgRegister[] = 
{
	{QUERY_SINGER_INFO_MSG_TYPE, Handler_HandleQuerySingerInfo, Default_handle}, 
	{QUERY_SONG_INFO_MSG_TYPE, Handler_HandleQuerySongInfo, Default_handle},
	{SELECTED_SONG_INFO_MSG_TYPE, Handler_HandleSelectedSong, Default_handle},
	{VOLUMN_CHANGE_MSG_TYPE, Handler_HandleChangeVolumn, Default_handle}, 
	{SWITCH_SONG_MSG_TYPE, Handler_HandleSwitchSong, Default_handle},
	{ADJUST_SONG_POS_MSG_TYPE, Handler_HandleInsertSong, Default_handle},
};
/********************************************************************************************/


/*********************************公共头文件解析*********************************************/
unsigned char CommonMsgHead_getCmd(char *_buffer, int _bufferLen)
{
	COMMON_MSG_HEAD* msgCmd = (COMMON_MSG_HEAD*)_buffer;
	return msgCmd->cmd;
}

unsigned int CommonMsgHead_getBodyLen(char *_buffer, int _bufferLen)
{
	COMMON_MSG_HEAD* msgCmd = (COMMON_MSG_HEAD*)_buffer;
	return ntohl(msgCmd->bodyLen);
}

char* CommonMsgHead_getMsgBody(char *_buffer, int _bufferLen)
{
	COMMON_MSG_HEAD* msgCmd = (COMMON_MSG_HEAD*)_buffer;
	return msgCmd->body;
}
/********************************************************************************************/

/********************************************************************************************/
int Default_handle(char* _condition, unsigned int _conditionLen, char* _info, unsigned int _infoLen)
{
	return 0;
}
/********************************************************************************************/

/*****************************接口***********************************************************/
void Register_registeInterface(unsigned char _cmd, EXECUTE  _interface)
{
	int registerNum = sizeof(msgRegister) / sizeof(msgRegister[0]);
	int index;
	for (index = 0; index < registerNum; index++)
	{
		if (_cmd == msgRegister[index].cmd)
		{
			msgRegister[index].execute = _interface;
			break;
		}
	}
}

void Register_registerQuerySingerInfoInterface(EXECUTE _querySingerInfoInterface)
{
	Register_registeInterface(QUERY_SINGER_INFO_MSG_TYPE, _querySingerInfoInterface);
}

void Register_registerQuerySongInfoInterface(EXECUTE _querySongInfoInterface)
{
	Register_registeInterface(QUERY_SONG_INFO_MSG_TYPE, _querySongInfoInterface);
}

void Register_registerSelectedSongInterface(EXECUTE _userSelectedSongInfoInterface)
{
	Register_registeInterface(SELECTED_SONG_INFO_MSG_TYPE, _userSelectedSongInfoInterface);
}

void Register_registerChangeVolumnInterface(EXECUTE _changeVolumnInterface)
{
	Register_registeInterface(VOLUMN_CHANGE_MSG_TYPE, _changeVolumnInterface);
}

void Register_registerSwitchSongInterface(EXECUTE _switchSongInterface)
{
	Register_registeInterface(SWITCH_SONG_MSG_TYPE, _switchSongInterface);
}

void Register_registerInsertSongInterface(EXECUTE _InsertSongInterface)
{
	Register_registeInterface(SWITCH_SONG_MSG_TYPE, _InsertSongInterface);
}
/********************************************************************************************/
/********************************************************************************************/
int Handler_handleQueryInfo(void *_handler, int _socket, unsigned char _cmd, char *_body, unsigned int _bodyLen)
{
	HANDLER *handler = (HANDLER*)_handler;
	char sendBuff[1000];
	int headLen = offsetof(COMMON_MSG_HEAD, body);
	unsigned int sendBuffLen = 1000 - headLen;
	
	COMMON_MSG_HEAD* head = (COMMON_MSG_HEAD*)sendBuff;
	head->cmd = _cmd;
	int bodyLen = handler->execute(_body, _bodyLen, head->body, sendBuffLen);
	R_ASSERT(bodyLen <= 0, 0);
	head->bodyLen = htonl(bodyLen);
	
	R_ASSERT(tcpSend(_socket, sendBuff, bodyLen + headLen) < 0, 0);
	return 1;
}


int Handler_HandleQuerySingerInfo(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, QUERY_SINGER_INFO_RSP_MSG_TYPE, _body, _bodyLen);
}
int Handler_HandleQuerySongInfo(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, QUERY_SONG_INFO_RSP_MSG_TYPE, _body, _bodyLen);
}
int Handler_HandleSelectedSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, SELECTED_SONG_INFO_RSP_MSG_TYPE, _body, _bodyLen);
}
int Handler_HandleChangeVolumn(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, VOLUMN_CHANGE_RSP_MSG_TYPE, _body, _bodyLen);
}
int Handler_HandleSwitchSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, SWITCH_SONG_RSP_MSG_TYPE, _body, _bodyLen);
}
int Handler_HandleInsertSong(void *_handler, int _socket, char *_body, unsigned int _bodyLen)
{
	return Handler_handleQueryInfo(_handler, _socket, ADJUST_SONG_POS_RSP_MSG_TYPE, _body, _bodyLen);
}
/********************************************************************************************/

/*return sock*/
int tcp_server_setup(char* _addr, unsigned short _port)
{
    int sock;
    struct sockaddr_in ser;
    memset(&ser, 0, sizeof(ser));
    ser.sin_port = htons(_port);
    ser.sin_addr.s_addr = inet_addr(_addr);
    ser.sin_family = AF_INET;
    
    /*Create socket*/   
    sock = socket(AF_INET,      //for IPv4
            SOCK_STREAM,    //sock_stream
            IPPROTO_TCP);   //TCP
    R_ASSERT(sock >= 0, 1);
    
    /*Bind*/
    R_ASSERT(bind(sock, 
        (struct sockaddr *)&ser, 
        sizeof(ser)) >=0, 1);

    /*listen*/
    R_ASSERT(listen(sock, 5) >= 0, 1);
	
    return sock;
}

/*Accept from client*/
int accept_cli(int _sock)
{
    /*socket & client information*/
    int sock_cli;
    struct sockaddr_in client;
    socklen_t client_sock_len;
    client_sock_len = sizeof(client);
    
    /*start accept*/
    sock_cli = accept(_sock, 
                     (struct sockaddr *)&client, 
                     &client_sock_len);
    R_ASSERT(sock_cli < 0, 1);
    return sock_cli;
}

int recvPacket( int sockfd, char * buffer )
{
    unsigned short msgLen;
    int ret = recv(sockfd, (char*)&msgLen, 2, 0);
    if (ret != 2)
    {
        if (ret > 0)
        {
            printf("FAIL msg length receive error!\n");
        }
        
        return -1;
    }
    
    msgLen = ntohs(msgLen);
    int bodyLen = msgLen - 2;

    int recvLen = 0;
    int curRecvLen = 0;
    while(bodyLen > recvLen)
    {
        curRecvLen = recv(sockfd, buffer + recvLen, 1000 - recvLen,0);
        R_ASSERT(curRecvLen > 0, -1);
        recvLen += curRecvLen; 
    }

    return bodyLen;
}

int dispatch(int _socket, char * _buffer, unsigned int _bufferLen)
{
    unsigned char cmd = CommonMsgHead_getCmd(_buffer, _bufferLen);
    int registerNum = sizeof(msgRegister) / sizeof(msgRegister[0]);
	unsigned int index;
    for (index = 0; index < registerNum; index++)
    {
        if (msgRegister[index].cmd == cmd)
        {
            return msgRegister[index].handle(&msgRegister, _socket, CommonMsgHead_getMsgBody(_buffer, _bufferLen), 
											CommonMsgHead_getBodyLen(_buffer, _bufferLen));
        }
    }

    return 0;
}

void msg_from_cli(int _sockfd)
{
    char buffer[BUFSIZE + 1];
    int bodyLen = 0;
    buffer[BUFSIZE] = '\0';
    while (1)
    {
        bodyLen = recvPacket(_sockfd, buffer);
        
        if (bodyLen > 0)
        {
            if (!dispatch(_sockfd, buffer, bodyLen))
            {
                printf("FAIL can not find msg!\n");
                continue;
            }
        }
		
    }
	
	close(_sockfd);
}

int tcpSend(int _sockfd, char* _buffer, unsigned int _bufferLen)
{
    char buffer[BUFSIZE] = {0};
    unsigned int packetLen = _bufferLen + PACKET_LENGTH_FIELD_OFFSET;

    if (_bufferLen > BUFSIZE)
    {
        printf("FAIL msg length over max!\n");
        return -1;
    }

    SET_MSG_LENGTH(buffer, packetLen);
    memcpy(buffer + PACKET_LENGTH_FIELD_OFFSET, (char*)(_buffer), _bufferLen);

    R_ASSERT(send(_sockfd, buffer, packetLen,0) == packetLen, -1); 
    return 0;
}

#if 0
int main(int argc, char **argv)
{
    fd_set fdSet;
    int maxSock = 0;
    int fdArray[MAX_SOCKET_NUM] = {0,};
    int fdArrayIndex = 0;
    struct timeval tv;
    unsigned short port = (unsigned short)atoi(argv[2]);
    int sock = tcp_server_setup(argv[1], port);
	int i =0;

    while (1)
    {
        FD_ZERO(&fdSet);
        FD_SET(sock, &fdSet);
        for (i = 0; i < MAX_SOCKET_NUM; i++) {
            if (fdArray[i] != 0) {
                FD_SET(fdArray[i], &fdSet);
            }
        }

        tv.tv_sec = 30;
        tv.tv_usec = 0;

        int ret = select(maxSock + 1, &fdSet, NULL, NULL, &tv);
        if (ret < 0) {
            perror("select");
            break;
        } else if (ret == 0) {
            printf("timeout\n");
            continue;
        }

        for (i = 0; i < fdArrayIndex; i++) {
            if (FD_ISSET(fdArray[i], &fdSet)) {
                msg_from_cli(fdArray[i]);
            }
        }

        if (FD_ISSET(sock, &fdSet)) {
            int acceptSocket = accept_cli(sock);

            if (acceptSocket <= 0) {
                perror("acceptSocket");
                continue;
            }

            // add to fd queue
            if (fdArrayIndex < MAX_SOCKET_NUM) {
                fdArray[fdArrayIndex++] = acceptSocket;
                if (fdArrayIndex > maxSock)
                    maxSock = fdArrayIndex;
            }
            else {
                printf("max connections arrive, exit\n");
                send(acceptSocket, "bye", 4, 0);
                close(acceptSocket);
                break;
            }
        }
    }
    return 0;
}
#endif
