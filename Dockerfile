# Simple n8n Docker build for Render
FROM n8nio/n8n:latest

# Expose the default n8n port
EXPOSE 5678

# Define working directory
WORKDIR /home/node

# Start n8n automatically
CMD ["tini", "--", "n8n", "start"]
