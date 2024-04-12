FROM golang:1.21.0

WORKDIR /app

RUN go mod download

COPY . .

RUN go build -o main .

CMD ["./main"]
