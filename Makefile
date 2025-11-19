build:
	tinygo build -o plugin.wasm -target wasi -buildmode=c-shared main.go

FUNCTION := $(wordlist 2,2,$(MAKECMDGOALS))
INPUT := $(wordlist 3,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))

test:
	@extism call plugin.wasm $(if $(FUNCTION),$(FUNCTION),respond) --input "$(if $(INPUT),$(INPUT),world)" --wasi

%:
	@:
