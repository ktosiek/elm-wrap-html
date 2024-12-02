all: index.html

index.html: src/Main.elm generated/SubHtml.elm
	elm make --debug src/Main.elm

generated/SubHtml.elm: codegen/Generate.elm
	if [ -d generated ]; then rm -r generated; fi
	 npx elm-codegen run
