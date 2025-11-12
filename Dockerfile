# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /home/node

# Expose n8n default port
EXPOSE 5678

# Ensure tini is installed (for container process management)
USER root
RUN apk add --no-cache tini
USER node

# Environment configuration for Render
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Run n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
