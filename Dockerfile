FROM n8nio/n8n:latest

ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=${PORT}
ENV WEBHOOK_URL=https://${RAILWAY_STATIC_URL}

EXPOSE ${PORT}

CMD ["n8n", "start", "--port", "${PORT}"]
