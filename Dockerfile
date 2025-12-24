FROM aldinokemal2104/go-whatsapp-web-multidevice:latest

WORKDIR /app
RUN mkdir -p /app/storages

ENV PORT=8080 
ENV WA_AUTH="test:test"
ENV WA_WEBHOOK="http://35.240.163.9:5000/v2/whatsapp"
ENV WA_DEBUG="true"

EXPOSE 8080


ENTRYPOINT []

# PERBAIKAN DI SINI:
# Gunakan /bin/sh -c dan petik dua "..." agar variable $PORT dan lainnya terbaca
CMD ["/bin/sh", "-c", "./main rest --basic-auth=$WA_AUTH --port=$PORT --debug=$WA_DEBUG --os=Chrome --account-validation=false --webhook=$WA_WEBHOOK"]
