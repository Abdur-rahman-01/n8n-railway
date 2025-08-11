FROM n8nio/n8n:latest

# Set default port & host so Railway can map it
ENV N8N_PORT=3000
ENV N8N_HOST=0.0.0.0

# Set the webhook URL (replace with your Railway subdomain later)
# You can also leave this blank and set it in Railway dashboard
ENV WEBHOOK_URL=https://${RAILWAY_STATIC_URL}

# Expose port for Railway
EXPOSE 3000

CMD ["n8n", "start"]
