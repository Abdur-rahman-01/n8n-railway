FROM n8nio/n8n:latest

# Remove the VOLUME instruction by re-building the image
USER root
RUN sed -i '/VOLUME/d' /usr/local/lib/node_modules/n8n/Dockerfile || true

# Set environment variables
ENV NODE_ENV=production

# Run n8n
CMD ["n8n", "start"]
# .env
N8N_PORT=${PORT}
N8N_HOST=0.0.0.0
WEBHOOK_TUNNEL_URL=https://your-service-name.up.railway.app

