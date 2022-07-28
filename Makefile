SHELL := /bin/bash
PWD=$(shell pwd)

.PHONY: config
config:
	# Run and remove instantly
	-docker run --rm -it --volume `pwd`/data:/app/data microblogpub/microblogpub inv configuration-wizard
	-docker run --env MICROBLOGPUB_CONFIG_FILE=tests.toml --rm -it --volume `pwd`/data:/app/data --volume `pwd`/app/static:/app/app/static microblogpub/microblogpub inv configuration-wizard

.PHONY: update
update:
	-docker run --volume `pwd`/data:/app/data --volume `pwd`/app/static:/app/app/static microblogpub/microblogpub inv update
