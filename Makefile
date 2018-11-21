PROJECT=dynload

check: lint

lint: | node_modules
	jshint index.js

node_modules: package.json
	yarn && touch $@

distclean:
	rm -fr node_modules

.PHONY: distclean lint check
