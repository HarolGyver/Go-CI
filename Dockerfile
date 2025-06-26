FROM golang:1.21.6

# Update system packages to reduce vulnerabilities
RUN apt-get update && apt-get upgrade -y && apt-get clean

# Set the working directory inside the container
WORKDIR /app
# Copy the Go module files

RUN go mod init teste

COPY . .

RUN go build -o math

CMD [ "./math" ]
