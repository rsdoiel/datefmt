#
# Simple Makefile
#

build:
	go build -o bin/timefmt cmds/timefmt/timefmt.go

clean:
	if [ -d bin ]; then rm -fR bin; fi
	if [ -d dist ]; then rm -fR dist; fi

install:
	env GOBIN=$(HOME)/bin go install cmds/timefmt/timefmt.go

release:
	./mk-release.sh

