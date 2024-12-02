all: index.html

index.html: $(wildcard src/*.elm generated/*.elm) generated/SubHtml.elm
	elm make --debug src/Main.elm

generated/SubHtml.elm: $(wildcard codegen/*.elm)
	if [ -d generated ]; then rm -r generated; fi
	npx elm-codegen run
