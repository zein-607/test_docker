# Vulnerable Dockerfile_1
FROM ubuntu:latest

# Run as root user (default in most base images)
USER root

# Hardcoded sensitive environment variables
ENV SECRET_KEY="supersecretkey"
ENV PASSWORD="mypassword"

# Install dependencies in an unoptimized way
RUN apt-get update && apt-get install -y curl vim

# Expose ports without restrictions
EXPOSE 22

