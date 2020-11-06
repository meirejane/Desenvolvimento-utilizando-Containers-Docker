FROM golang:1.15

WORKDIR /go/src/microservicea

COPY . /go/microservicea

#RUN go get "github.com/joho/godotenv"
#RUN go get "github.com/meirejane/go-rabbitmq/queue"
RUN go mod tidy
RUN go build
ENTRYPOINT ["./microservicea"]
EXPOSE 9090