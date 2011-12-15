#  Makefile for miniscm
#
#  This defaults to using ANSI C on BSD-flavoured UNIX.  You may select a
#  different flavour of UNIX, or a pre-ANSI version of C, by telling make
#  to override the CC and/or CFLAGS variables.
#  Please see source and/or README for system definition #define's.
#
#  Examples:
#    CFLAGS = -g -DSYSV -traditional -traditional-cpp -Wid-clash-8
#    CFLAGS = -O -DSYSV

CC ?= gcc
CFLAGS ?= -O -ansi -pedantic -DBSD

all :	miniscm

miniscm : miniscm.c Makefile
	$(CC) $(CFLAGS) -o miniscm miniscm.c

clean :
	rm -f core *.o miniscm *~

