.PHONY: lint gen breaking test build

lint:
	buf lint

gen: lint ## Genera gen/go y gen/ts (se commitean: Go baja los módulos directo de git)
	rm -rf gen
	buf generate
	go mod tidy

breaking: ## Falla si rompes compatibilidad contra main
	buf breaking --against '.git#branch=main'

test: lint
build: gen
