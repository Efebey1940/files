# Use Debian Bookworm as the base image
FROM debian:bookworm

# Install necessary packages, including systemd
RUN apt-get update && \
    apt-get install -y systemd systemd-sysv && \
    rm -rf /var/lib/apt/lists/*

# Set the default command to run systemd
CMD ["/lib/systemd/systemd"]