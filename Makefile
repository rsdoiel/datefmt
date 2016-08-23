#
# Simple Makefile
#

build:
	go build -o bin/timefmt cmds/timefmt/timefmt.go

clean:
	if [ -d bin ]; then /bin/rm -fR bin; fi
	if [ -d dist ]; then /bin/rm -fR dist; fi
	if [ -f timefmt-binary-release.zip ]; then /bin/rm -f timefmt-binary-release.zip; fi

install:
	env GOBIN=$(HOME)/bin go install cmds/timefmt/timefmt.go

#test:
#	go test

save:
	./mk-website.bash
	git commit -am "Quick save"
	git push origin master

website:
	./mk-website.bash

release:
	./mk-release.bash

publish:
	./mk-website.bash
	./publish.bash

