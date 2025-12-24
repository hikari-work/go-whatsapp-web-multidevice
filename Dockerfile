FROM aldinokemal2104/go-whatsapp-web-multidevice:latest

WORKDIR /app
# Cloud Run butuh folder ini ada
RUN mkdir -p /app/storages

# PENTING: Set Environment Variable Default
ENV PORT=8080
ENV WA_AUTH="test:test"
ENV WA_WEBHOOK="http://35.240.163.9:5000/v2/whatsapp"
ENV WA_DEBUG="true"

EXPOSE 8080

# === PERBAIKAN UTAMA ===
# 1. Kita WAJIB mereset ENTRYPOINT dari image asli agar bisa pakai shell custom
ENTRYPOINT []

# 2. Gunakan /bin/sh -c secara eksplisit
# Perhatikan tanda petik dua (") agar variable $PORT terbaca sebagai angka 8080
CMD ["/bin/sh", "-c", "./main rest --port=$PORT --basic-auth=$WA_AUTH --debug=$WA_DEBUG --os=Chrome --account-validation=false --webhook=$WA_WEBHOOK"]
