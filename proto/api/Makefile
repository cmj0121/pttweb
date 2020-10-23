.PHONY: all clean

all:
	protoc --go_out=plugins=grpc:. *.proto

clean:
	rm -f board.pb.go
