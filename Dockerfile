FROM golang:1.21.5

WORKDIR /app

RUN go mod init ci-golang

COPY . .

RUN go build -o math

CMD ["./math"]