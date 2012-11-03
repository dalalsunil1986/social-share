all: install cat compile

install:
	npm install

cat:
	cat src/share.js src/parser.js > share.js

compile:
	java -jar tools/compiler.jar --js share.js --js_output_file share.min.js

server:
	node examples/server.js

test:
	@./node_modules/.bin/mocha tests/parser-spec.js
