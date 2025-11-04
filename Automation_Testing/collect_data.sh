#!/bin/bash

# ============================
# 🌦️ Automated Weather Collector
# ============================

# Direktori penyimpanan file
DATA_DIR="/home/ec2-user/cron"

# Pastikan folder tersedia
mkdir -p $DATA_DIR

# Format tanggal dan jam (ex: 11042025_08.00)
DATE=$(date +"%m%d%Y")
HOUR=$(date +"%H.%M")

# Nama file CSV
FILENAME="cron_${DATE}_${HOUR}.csv"
FILEPATH="${DATA_DIR}/${FILENAME}"

# Lokasi target (Jakarta, Indonesia)
LAT="-6.2"
LON="106.8"

# URL API Open-Meteo
URL="https://api.open-meteo.com/v1/forecast?latitude=${LAT}&longitude=${LON}&current=temperature_2m,relative_humidity_2m,wind_speed_10m"

# Ambil data dan parse ke CSV
echo "datetime,temperature_2m,humidity_2m,wind_speed_10m" > "$FILEPATH"
curl -s "$URL" | jq -r '.current | "\(.time),\(.temperature_2m),\(.relative_humidity_2m),\(.wind_speed_10m)"' >> "$FILEPATH"

echo "✅ Weather data collected at ${HOUR} and saved to ${FILEPATH}"
