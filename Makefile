d3-min.js: node_modules
	node_modules/.bin/smash $(shell node_modules/.bin/smash --list \
	  d3-wrapper-start.js \
	  node_modules/d3/src/arrays/extent.js \
	  node_modules/d3/src/compat/index.js \
	  node_modules/d3/src/selection/* \
	  node_modules/d3/src/behavior/* \
	  node_modules/d3/src/geom/hull.js \
	  node_modules/d3/src/geom/polygon.js \
	  node_modules/d3/src/scale/linear.js \
	  node_modules/d3/src/scale/log.js \
	  node_modules/d3/src/time/format.js \
	  node_modules/d3/src/time/scale.js \
	  node_modules/d3/src/transition/* \
	  node_modules/d3/src/svg/axis.js \
	  node_modules/d3/src/svg/line.js \
	  node_modules/d3/src/svg/arc.js \
	  node_modules/d3/src/event/drag.js \
	  node_modules/d3/src/layout/pack.js \
	  d3-wrapper-end.js) > d3.js
	node_modules/.bin/uglifyjs d3.js -c -m -o d3-min.js

node_modules:
	npm install

.PHONY: clean
clean:
	rm -rf node_modules d3-min.js d3.js
