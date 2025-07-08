compile = bunx sass *.scss *.css --no-source-map --style=compressed

deps: PHONY
	bun install

dev: deps
	$(compile) --watch

build: deps
	$(compile)

PHONY:
