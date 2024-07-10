# Makefile

protoc:
	cd proto && "C:\protoc\bin\protoc.exe" --go_out=../protogen/golang --go_opt=paths=source_relative \
	./**/*.proto