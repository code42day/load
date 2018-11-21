PROJECT=dynload

NODE_BIN=node_modules/.bin

check: lint

lint: | node_modules
	$(NODE_BIN)/jshint index.js

node_modules: package.json
	yarn && touch $@

distclean:
	rm -fr node_modules

.PHONY: distclean lint check
