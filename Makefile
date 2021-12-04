gen:
    #protoc --proto_path=proto proto/*.proto --go_out=plugins=grpc:pb
    protoc --proto_path=proto proto/*.proto  --go_out=:pb --go-grpc_out=:pb
clean:
    rm pb/*.go

run:
    go run main.go