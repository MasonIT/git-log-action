FROM debian:9.8-slim

# Install Git
RUN apt-get update && apt-get install -y git

# Add the entry point
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Load the entry point
ENTRYPOINT ["/entrypoint.sh"]