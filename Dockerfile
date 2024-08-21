FROM ubuntu:22.04

LABEL authors="hangil.kim"

# Install necessary packages
RUN apt -qq update \
&& apt -qq install -y g++ cmake wget unzip python3 \
&& apt clean

# Set the working directory
WORKDIR /app

RUN cmake --version

# Copy the project files
COPY . .

# Create build directory
RUN mkdir -p build

# Build the project
RUN cd build && cmake .. && make

# Set the entry point
CMD ["./build/hello_world_2"]