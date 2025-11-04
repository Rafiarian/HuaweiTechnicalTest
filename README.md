# � Full-Stack Development Test Projects

A collection of three practical implementations demonstrating backend development, automation, and database management skills.

## 📁 Project Structure

```
.
├── SQL_Test/               # SQL Database Implementation
│   ├── ddl_employee.sql   # Employee database operations
│   └── README.md         # SQL project documentation
│
├── Automation_Testing/    # Automated Data Collection
│   ├── collect_data.sh   # Data collection script
│   ├── clean_old_files.sh # Cleanup script
│   └── README.md         # Automation documentation
│
├── Backend/              # REST API Server
│   ├── server.js        # Express.js server
│   ├── package.json     # Dependencies
│   ├── Dockerfile      # Container configuration
│   └── README.md       # API documentation
│
└── README.md           # Main project documentation  

## 🔍 Project Overview

### 1. SQL Employee Database (`/SQL_Test`)
A comprehensive SQL implementation for employee management:
- Create and populate employee database
- Handle salary updates and calculations
- Complex queries with sorting and filtering
- Experience-based employee analysis
- Subquery demonstrations

**Key Technologies**: SQL, DDL, DML

### 2. Automated Weather Data Collection (`/Automation_Testing`)
Automated system for collecting and managing weather data:
- Scheduled data collection from Meteo Weather API
- Automated data cleanup for efficient storage
- Cross-platform support (Windows/Linux)
- Configurable scheduling system

**Key Technologies**: Bash, PowerShell, Cron, Task Scheduler

### 3. Form Submission API (`/Backend`)
RESTful API server for form data management:
- Express.js server with CORS support
- Form submission endpoint
- Data retrieval functionality
- Docker containerization
- Error handling and validation

**Key Technologies**: Node.js, Express, Docker, REST API

---

## 🚀 How to Run

### SQL Task
- Run the SQL scripts using your preferred SQL engine.

### Automated Scripts
```bash
# Run data collection manually
bash collect_data.sh

# Run cleanup manually
bash delete_old_data.sh

# Or use cron jobs as scheduled in crontab
Backend API
bash
Copy code
# Install dependencies
npm install

# Run server
npm start

# Or use Docker
docker build -t backend-server .
docker run -p 3000:3000 backend-server
📬 Contact
Name: Rafi Arian Yusuf

Role: Backend Developer

Skills: Node.js, SQL, Bash scripting, DevOps, Project Management

I’m ready to contribute as your next backend developer, bringing automation, scalable systems, and clean coding practices to your team.