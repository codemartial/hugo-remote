# Minimal, supported base image
FROM debian:bookworm-slim

# Install required tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    git \
    jq \
 && rm -rf /var/lib/apt/lists/*

# Copy action script
COPY action.sh /action.sh
RUN chmod +x /action.sh

# Run the action
ENTRYPOINT ["/action.sh"]
