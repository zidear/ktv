#ifndef _SERVER_H_
#define _SERVER_H_

#define MAX_SOCKET_NUM 100

int tcp_server_setup(char* _addr, unsigned short _port);
int accept_cli(int _sock);
int tcpSend(int _sockfd, char* _buffer, unsigned int _bufferLen);
void msg_from_cli(int _sockfd);

#endif
