# 🌐 Simple Form API Backend

A lightweight Express.js server that handles form submissions with name and email data.

## 🗂 Project Structure
```
backend/
│
├── server.js        # Main server implementation
├── package.json     # Project dependencies
├── Dockerfile      # Container configuration
└── README.md       # Documentation
```

## � Features

- **POST /api/form**: Submit form with name and email
- **GET /api/form**: Retrieve all submitted forms
- CORS enabled for cross-origin requests
- Error handling for invalid submissions
- In-memory data storage

## 🛠️ Technical Stack

- Node.js
- Express.js
- Dependencies:
  - `express`: Web framework
  - `cors`: Cross-origin resource sharing
  - `body-parser`: Request body parsing

## ⚙️ Setup & Installation

1. **Install Dependencies**
   ```bash
   npm install
   ```

2. **Start the Server**
   ```bash
   node server.js
   ```
   Server will start on http://localhost:8080

## 🐳 Docker Support
Build and run with Docker:

```bash
# Build the image
docker build -t form-api .

# Run the container
docker run -p 8080:8080 form-api
```

## 📡 API Endpoints

### 1. Submit Form (POST)
```http
POST /api/form
Content-Type: application/json

{
    "name": "string",
    "email": "string"
}
```

**Response:**
```json
{
    "message": "Form data received successfully",
    "data": {
        "name": "string",
        "email": "string"
    }
}
```

### 2. Get All Submissions (GET)
```http
GET /api/form
```

📘 README.md
# 🌤️ Simple Form Backend (Node.js + Docker)

This is a lightweight backend built with **Express.js** that provides a simple API to **store and retrieve form data**.  
It’s containerized with **Docker** so anyone can run it easily without manual setup.

## 🧪 Testing

### Using curl
```bash
# Submit form
curl -X POST http://localhost:8080/api/form \
     -H "Content-Type: application/json" \
     -d '{"name": "Rafi Arian", "email": "rafi@example.com"}'

# Get all submissions
curl http://localhost:8080/api/form
```

### Using PowerShell
```powershell
# Submit form
$body = @{
    name = "Rafi Arian"
    email = "rafi@example.com"
} | ConvertTo-Json

Invoke-RestMethod -Uri 'http://localhost:8080/api/form' -Method Post -Body $body -ContentType 'application/json'

# Get submissions
Invoke-RestMethod -Uri 'http://localhost:8080/api/form' -Method Get
```

## 📝 Notes

- Data is stored in-memory and resets when server restarts
- Error handling includes:
  - Missing required fields (400 error)
  - Server errors (500 error)
- CORS is enabled for all origins
- Server runs on port 8080 by default

## 👨‍💻 Author
- Rafi Arian Yusuf