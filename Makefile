NAME = v.tmLanguage.json

all: grammars/$(NAME) LICENSE

grammars/$(NAME): upstream/syntaxes/$(NAME)
	sed -e '/"fileTypes":/,/\]/ s/"\./"/' $? > $@
	node -e 'JSON.parse(require("fs").readFileSync("$@"))'

LICENSE: upstream/LICENSE
	cp $? $@

upstream/LICENSE upstream/syntaxes/$(NAME): upstream/.git

upstream/.git:
	git submodule update --init

update: upstream/.git
	git submodule update --remote --merge
