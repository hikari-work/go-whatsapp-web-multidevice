FROM aldinokemal2104/go-whatsapp-web-multidevice:latest

WORKDIR /app
RUN mkdir -p /app/storages
EXPOSE 8080

ENV WA_AUTH="test:test"
ENV WA_WEBHOOK="http://35.240.163.9:5000/v2/whatsapp"
ENV WA_PORT="8080"
ENV WA_DEBUG="true"
ENTRYPOINT []
CMD ./main rest --basic-auth=$WA_AUTH --port=$WA_PORT --debug=$WA_DEBUG --os=Chrome --account-validation=false --webhook=$WA_WEBHOOK
