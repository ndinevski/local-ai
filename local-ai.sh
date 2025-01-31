#!/bin/bash

set -e

if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

if ! command -v ollama &>/dev/null; then
  echo "Installing ollama..."
  brew install ollama
else
  echo "Ollama is already installed."
fi

ollama run deepseek-r1:8b &

REPO_URL="https://github.com/ndinevski/local-ai"
REPO_NAME=$(basename "$REPO_URL" .git)

if [ ! -d "$REPO_NAME" ]; then
  echo "Cloning repository $REPO_URL..."
  git clone "$REPO_URL"
else
  echo "Repository already exists. Skipping clone."
fi

cd "$REPO_NAME/offline-chatbot"

echo "Installing dependencies..."
npm install

echo "Starting project..."
npm run start

