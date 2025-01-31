# Local (Offline) AI Chatbot  

This script automates the setup process for running an offline AI chatbot using Ollama. It installs all necessary dependencies, runs the `deepseek-r1:8b` model, and sets up a UI for interaction.  

> **⚠️ Note:** This script currently runs on **macOS**. Support for other operating systems may be added in the future.

## Features  
✅ Fully offline AI chat capabilities  
✅ Runs the `deepseek-r1:8b` model locally (You can change the script to use a different model)
✅ Clean, modern UI  
✅ Supports multiple AI models through Ollama  
✅ Real-time responses  

## Prerequisites  
Before running the script, ensure you have:  
- A macOS system with Homebrew installed (if not, the script installs it).  
- Node.js and npm installed.  

## Installation & Setup  
1. Clone this repository:  
   ```sh
   git clone some-link
   cd some-link
   ```
2. Run the setup script:
   ```sh
   ./setup.sh
   ```

This will:
- Install Ollama via Homebrew
- Run the deepseek-r1:8b AI model
- Clone the project repository
- Install necessary Node.js dependencies
- Start the UI

## Running the Application
Once the script completes, the chatbot UI will be available at:

Frontend: `http://localhost:5173`
Backend:  `http://localhost:3000`
