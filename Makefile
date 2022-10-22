all: run

install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako

run: 
	./fab/fab src.txt Test grammar.ohm fabricate.fmt
