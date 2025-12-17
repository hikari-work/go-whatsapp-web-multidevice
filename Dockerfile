FROM aldinokemal2104/go-whatsapp-web-multidevice:latest
WORKDIR /app
RUN mkdir -p /app/storages
EXPOSE 8080

ENTRYPOINT ["/app/go-whatsapp-web-multidevice"]

CMD ["rest", "--basic-auth=admin:admin", "--port=8080", "--debug=true", "--os=Chrome", "--account-validation=false"]
