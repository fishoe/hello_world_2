FROM ubuntu:22.04

LABEL authors="hangil.kim"

# Install necessary packages
RUN apt-get update && apt-get install -y\
    cmake \
    gcc \
    make \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

RUN cmake --version

# Copy the project files
COPY . .

RUN chmod +x ./scripts/build.sh

# Set the entry point
CMD ["sh ./scripts/build.sh"]