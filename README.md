# 👋 Hi, I'm Rafi Arian Yusuf — Your Next Developer

I am a **Backend/Devops Developer** with experience in:
- **Database configuration**
- **Backend integration**
- **DevOps**
- **System Analyst**
- **CloudPlatform**
- **Project management**

I enjoy building robust and automated systems that are easy to deploy and maintain.  

---

# � DevOps Developer Test Projects

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

```

## 🏗 Projects Completed

This repository contains **three practical backend & automation tasks** that demonstrate my skills in Node.js, Bash scripting, and DevOps practices.

---
### 1️⃣ Backend API with Node.js + Express

- Developed a **simple backend server** that can:
  - Receive form submissions via **POST**
  - Store them in an **in-memory array**
  - Return stored data via **GET**
- Dockerized the backend for **easy deployment and testing**
- Highlights my abilities in **API design, backend integration, and DevOps practices**.

----
### 2️⃣ Automated Data Collection & Cleanup

- Built **Bash scripts** to:
  - Collect weather data **3 times a day** and save it as CSV files
  - Automatically delete CSV files **older than 30 days**
- Configured **cron jobs** for automation:
  - Data collection at `08:00`, `12:00`, and `15:00` daily
  - Cleanup at midnight daily
- Demonstrates my skills in **automation, scheduling, and data management**.

---
### 3️⃣ SQL Data Processing

- Created a **SQL script** to manage employee data including:
  - Adding new records
  - Updating salaries
  - Calculating total salary expenditure
  - Sorting employees by experience
  - Using subqueries to filter data
- This task shows my ability to **handle logical database operations** efficiently.


---

## 🚀 How to Run

### SQL Task
- Run the SQL scripts using your preferred SQL engine.

### Automated Scripts
# Run data collection manually
bash collect_data.sh

# Run cleanup manually
bash delete_old_data.sh

# Or use cron jobs as scheduled in crontab
0 8,12,15 * * * ~/collect_data.sh >> ~/cron/collect.log 2>&1
0 0 * * * ~/delete_old_data.sh >> ~/cron/cleanup.log 2>&1

# Note: Detailed explanations and all SQL scripts are available in the sql/ folder

### Backend API

# Install dependencies
npm install

# Run server
npm start

# Or use Docker
docker build -t backend-server .
docker run -p 3000:3000 backend-server
# Note: Detailed explanations and all SQL scripts are available in the Backend/ folder

📬 Contact
Name: Rafi Arian Yusuf

Role: DevOPS/Backend Developer

Skills: Node.js, SQL, Bash scripting, DevOps, Project Management

I’m ready to contribute as your next DevOps/backend developer, bringing automation, scalable systems, and clean coding practices to your team.