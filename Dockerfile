FROM aldinokemal2104/go-whatsapp-web-multidevice:latest

WORKDIR /app
RUN mkdir -p /app/storages

# Set Default Env
ENV WA_AUTH="test:test"
ENV WA_WEBHOOK="http://35.240.163.9:5000/v2/whatsapp"
ENV WA_DEBUG="true"
# Cloud Run injects PORT, but we set default just in case
ENV PORT=8080 

# Copy script wrapper yang baru kita buat
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Reset Entrypoint bawaan image
ENTRYPOINT []

# Jalankan script wrapper
CMD ["/app/start.sh"]
