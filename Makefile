#
# Simple Makefile
#

build:
	go build -o bin/timefmt cmds/timefmt/timefmt.go

clean:
	if [ -d bin ]; then rm -fR bin; fi
	if [ -d dist ]; then rm -fR dist; fi
	if [ -f timefmt-binary-release.zip ]; then rm -f timefmt-binary-release.zip; fi

install:
	env GOBIN=$(HOME)/bin go install cmds/timefmt/timefmt.go

#test:
#	go test

release:
	./mk-release.sh

