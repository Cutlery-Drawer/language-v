NAME = v.tmLanguage.json

all: grammars/$(NAME) snippets/snippets.json LICENSE

grammars/$(NAME): upstream/syntaxes/$(NAME)
	sed -e '/"fileTypes":/,/\]/ s/"\./"/' $^ > $@
	node -e 'JSON.parse(require("fs").readFileSync("$@"))'

snippets/snippets.json: upstream/snippets/snippets.json
	node > $@ -e '\
		const fs = require("fs"); \
		const snippets = JSON.parse(fs.readFileSync("$^")); \
		for(const [, snippet] of Object.entries(snippets)){ \
			snippet.body = snippet.body.join("\n"); \
			delete snippet.scope; \
		} \
		const out = {".source.v": snippets}; \
		process.stdout.write(JSON.stringify(out, null, "\t")); \
	'

LICENSE: upstream/LICENSE
	cp $? $@

upstream/LICENSE upstream/syntaxes/$(NAME): upstream/.git

upstream/.git:
	git submodule update --init

update: upstream/.git
	git submodule update --remote --merge
