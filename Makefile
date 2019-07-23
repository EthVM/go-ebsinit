VERSION = v0.1

all: clean fmt linux

linux:
	GOOS=linux go build -ldflags="-X main.version=$(VERSION) -s -w" -o ebsinit_linux_amd64

fmt:
	go fmt

clean:
	rm -f ebsinit* go-ebsinit*
