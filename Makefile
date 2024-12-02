all: index.html

index.html: src/Main.elm generated/HelloWorld.elm
	elm make --debug src/Main.elm

generated/HelloWorld.elm: codegen/Generate.elm
	 npx elm-codegen run
