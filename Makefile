codegen:
	redocly bundle openapi/pre-7/openapi.yaml -o openapi/openapi-latest.yaml
	swift run swift-openapi-generator generate \
		--mode types \
		--output-directory Sources/BbcNews/Gen \
		--access-modifier public \
		openapi/openapi-latest.yaml
