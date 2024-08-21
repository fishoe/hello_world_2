FROM ubuntu:22.04

LABEL authors="hangil.kim"

# Install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends\
    gcc \
    make \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

RUN curl http://github.com/Kitware/CMake/releases/download/v3.30.2/cmake-3.30.2-linux-x86_64.sh -o cmake.sh

RUN ./cmake.sh

RUN export PATH=/app/cmake-3.30.2-linux-x86_64/bin:$PATH

RUN cmake --version

# Copy the project files
COPY . .

# Create build directory
RUN mkdir -p build

# Build the project
RUN cd build && cmake .. && make

# Set the entry point
CMD ["./build/hello_world_2"]