FROM n8nio/n8n:latest

# Set timezone (optional)
ENV GENERIC_TIMEZONE="Asia/Kolkata"

# Use Railway's /data volume for persistence
ENV N8N_PATH="/data"
VOLUME ["/data"]
