FROM n8nio/n8n:latest

# Remove the VOLUME instruction by re-building the image
USER root
RUN sed -i '/VOLUME/d' /usr/local/lib/node_modules/n8n/Dockerfile || true

# Set environment variables
ENV NODE_ENV=production

# Run n8n
CMD ["n8n", "start"]
