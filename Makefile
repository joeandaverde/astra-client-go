.PHONY: generate-client tools

tools:
	go get github.com/deepmap/oapi-codegen/cmd/oapi-codegen

generate-client: tools
	oapi-codegen -generate types,client -package astra -o astra/astra.gen.go swagger.yaml