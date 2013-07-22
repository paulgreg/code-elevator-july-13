all: unit run 

tdd:
	./node_modules/.bin/mocha --watch

unit:
	./node_modules/.bin/mocha

debug:
	./node_modules/.bin/nodemon --debug server/launcher.js

run:
	./node_modules/.bin/nodemon server/launcher.js

.PHONY: test
