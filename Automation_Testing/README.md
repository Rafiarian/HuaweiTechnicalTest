# 🧭 Weather Data Collection Automation

This project automates the collection and maintenance of weather data using Bash scripts designed to run seamlessly on Linux environments, particularly AWS EC2 instances.

## Overview

The automation handles two main processes:
1. **Data Collection** — Automatically collects weather data from the Meteo Weather API three times a day
2. **Data Cleanup** — Automatically removes collected data files older than 30 days

## 🖥️ Platform Support

- **Linux/WSL**: Bash scripts (`collect_data.sh`, `clean_old_files.sh`)

--- here’s a clean README.md you can copy–paste directly:

# 🧭 Automation Task: Data Collection & Cleanup (Cron Job)

This project automates two main processes using shell scripts and cron jobs:
1. **Data Collection** — automatically collects data from the Meteo Weather API three times a day.
2. **Data Cleansing** — automatically deletes old collected data after 30 days.

---

## 🚀 Setup & Usage

1. **Prerequisites**
   ```bash
   # Install jq (Ubuntu/Debian)
   sudo apt-get install jq
   
   # Or for Amazon Linux/CentOS
   sudo yum install jq -y
   ```

2. **Script Setup**
   ```bash
   chmod +x collect_data.sh clean_old_files.sh
   ```

3. **Cron Setup**
   ```bash
   crontab -e
   
   # Add these lines:
   0 8,12,15 * * * ~/collect_data.sh >> ~/cron/collect.log 2>&1
   0 0 * * * ~/clean_old_files.sh >> ~/cron/cleanup.log 2>&1
   ```

   💡 A crontab_template.txt file is included in this project to help you understand and replicate the scheduling configuration easily.

## 📊 Data Format

Files are saved as CSVs with the following pattern:
```
cron_{date}_{hour}.csv
Example: cron_11042025_15.00.csv
```

## 🔍 Technical Details

### API Information
- **Service**: Meteo Weather API
- **Endpoint**: `https://api.open-meteo.com/v1/forecast`
- **Parameters**:
  - `latitude`: -6.2 (Jakarta)
  - `longitude`: 106.8
  - `current_weather`: true

### Data Collection
Each CSV file contains:
- Latitude
- Longitude
- Temperature
- Wind Speed
- Timestamp

### Schedule
- Data collection: 3 times daily (08:00, 12:00, 15:00)
- Cleanup: Daily at midnight (removes files older than 30 days)
- All operations are logged in the `cron` directory

## 👨‍💻 Author & Technical Stack

- **Author**: Rafi Arian Yusuf
- **Platforms**: Linux/WSL
- **Languages**: Bash
- **Tools**: jq, curl/Invoke-WebRequest
- **Automation**: Cron
