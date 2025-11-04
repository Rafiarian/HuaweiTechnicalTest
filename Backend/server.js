// Import dependencies
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");

// Initialize app
const app = express();
const PORT = process.env.PORT || 8080; // Try alternative port

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Basic error handling
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});

// Simple in-memory data store
let formDataList = [];

// POST endpoint: receive form data
app.post("/api/form", (req, res) => {
  const data = req.body;

  if (!data.name || !data.email) {
    return res.status(400).json({ message: "Missing required fields" });
  }

  formDataList.push(data);
  res.status(201).json({ message: "Form data received successfully", data });
});

// GET endpoint: return all stored form data
app.get("/api/form", (req, res) => {
  res.json(formDataList);
});

// Start server
app.listen(PORT, 'localhost', (err) => {
  if (err) {
    console.error('Error starting server:', err);
    return;
  }
  console.log(`✅ Server running on http://localhost:${PORT}`);
  console.log('Press Ctrl+C to stop the server');
});
