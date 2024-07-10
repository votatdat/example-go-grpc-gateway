# Makefile

# protoc:
# 	cd proto && "C:\protoc\bin\protoc.exe" --go_out=../protogen/golang --go_opt=paths=source_relative \
# 	./**/*.proto

# protoc:
# 	cd proto && "C:\protoc\bin\protoc.exe" --go_out=../protogen/golang --go_opt=paths=source_relative \
# 	--go-grpc_out=../protogen/golang --go-grpc_opt=paths=source_relative \
# 	./**/*.proto

protoc:
	cd proto && "C:\protoc\bin\protoc.exe" --go_out=../protogen/golang --go_opt=paths=source_relative \
	--go-grpc_out=../protogen/golang --go-grpc_opt=paths=source_relative \
	--grpc-gateway_out=../protogen/golang --grpc-gateway_opt paths=source_relative \
	--grpc-gateway_opt generate_unbound_methods=true \
	./**/*.proto