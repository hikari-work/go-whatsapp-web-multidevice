FROM aldinokemal2104/go-whatsapp-web-multidevice:latest
WORKDIR /app
RUN mkdir -p /app/storages
EXPOSE 8080
CMD ["rest", "--basic-auth=test:test", "--port=8080", "--debug=true", "--os=Chrome", "--account-validation=false", "--webhook=http://35.240.163.9:5000/v2/whatsapp"]
