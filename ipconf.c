#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <ifaddrs.h>

#define V void
#define S struct
#define C char
#define T int
#define F if
#define W for
#define R return
#define O sizeof
#define P ip
#define B ifa
#define M main
#define K exit
#define u NULL
#define N printf
#define U ifaddr
#define p perror
#define A netmask
#define Y ifaddrs
#define Z AF_INET
#define i ifa_addr
#define a sin_addr
#define x ifa_next
#define e ifa_name
#define s sa_family
#define n inet_ntop
#define J getifaddrs
#define t ifa_netmask
#define L freeifaddrs
#define G sockaddr_in
#define f EXIT_FAILURE
#define I INET_ADDRSTRLEN
#define D display_interface_info
#define Q "\x67\x65\x74\x69\x66\x61\x64\x64\x72\x73"
#define H "\x69\x6E\x74\x65\x72\x66\x61\x63\x65\x3A"
#define E "\x69\x70\x5F\x61\x64\x64\x72\65\x73\x73\x3A"
#define X "\x6E\x65\x74\x6D\x61\x73\x6B\x3A\x20"

V D(S Y*B){C P[I];C A[I];F(B->i->s==Z){n(Z,&((S G*)B->i)->a,P,O(P));n(Z,&((S G*)B->t)->a,A,O(A));N("%s\n",H,B->e);N("%s\n",E,P);N("%s\n",X,A);}}T M(){S Y*U,*B;F(J(&U)==-1){p(Q);K(f);}W(B=U;B!=u;B=B->x){D(B);}L(U);R 0;}
