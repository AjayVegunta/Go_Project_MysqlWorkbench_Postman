# Use an official Golang runtime as the base image
FROM golang:1.12-alpine

# Set the working directory inside the container
WORKDIR /app

# Install Git, GCC, and other necessary build tools
RUN apk add --no-cache git gcc musl-dev

# Copy the current directory contents into the container at /app
COPY . /app

# Build your Go application
RUN go build -o main

# Expose a port that the application will run on
EXPOSE 9010

# Command to run the executable
CMD ["./main"]
