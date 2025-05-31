FROM n8nio/n8n:1.94.1  # Updated to latest stable
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
USER node
