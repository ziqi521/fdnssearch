build:
	go build -v ./...
.PHONY: build

test:
	go test -v ./...
.PHONY: test