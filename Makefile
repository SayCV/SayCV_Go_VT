include $(GOROOT)/src/Make.inc

TARG=goat
GOFILES=*.go

DEPS=term

include $(GOROOT)/src/Make.cmd

demo: all
	stty raw -echo; ./goat; stty cooked echo
