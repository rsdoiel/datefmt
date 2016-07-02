#
# Simple Makefile
#

build:
	go build -o bin/datefmt cmds/datefmt/datefmt.go

clean:
	if [ -d bin ]; then rm -fR bin; fi
	if [ -d dist ]; then rm -fR dist; fi

install:
	env GOBIN=$(HOME)/bin go install cmds/datefmt/datefmt.go

release:
	./mk-release.sh

