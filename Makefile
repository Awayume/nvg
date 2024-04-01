.PHONY: all build dist clean help

default:
	@## An alias for target "build" and "dist".
	make build
	make dist

build:
	@## Run build.
	mkdir -p ./build/output
	go build -o ./build/output ./cmd/nvg

dist:
	@## Create packages to distribution.
	exit 1

clean:
	@## Remove the build directory.
	rm -r ./build

help:
	@## Print this message and exit.
	@echo "Usage: make [options] [target] ...\nTargets:"
	@awk 'BEGIN{FS=":"} /^([a-z]|-)+:/{target=$$1; getline; printf "  %-20s%s\n", target, substr($$0, 6)}' $(MAKEFILE_LIST)
