#!/bin/sh

echo "--> Starting Wrapper Script"
echo "--> PORT detected: $PORT"

# Jika PORT kosong (biasanya saat testing local), set ke 8080
if [ -z "$PORT" ]; then
  export PORT=8080
fi

# Jalankan aplikasi. Kita gunakan 'exec' agar process Go menggantikan process shell ini (PID 1)
# Ini penting agar sinyal shutdown dari Cloud Run diterima aplikasi.
echo "--> Executing Binary..."
exec ./main rest \
  --port=$PORT \
  --basic-auth=$WA_AUTH \
  --debug=$WA_DEBUG \
  --os=Chrome \
  --account-validation=false \
  --webhook=$WA_WEBHOOK
