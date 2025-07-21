#!/bin/bash

# This script checks for the necessary prerequisites to run the AI-Powered Development Environment.

# Function to print a success message
print_success() {
  echo -e "\033[0;32m✔ $1\033[0m"
}

# Function to print an error message
print_error() {
  echo -e "\033[0;31m✖ $1\033[0m"
}

# --- Prerequisite Checks ---
echo "Checking prerequisites..."

# Check for Git
if command -v git &> /dev/null; then
  print_success "Git is installed."
else
  print_error "Git is not installed. Please install it to clone the repository."
  exit 1
fi

# Check for Docker
if command -v docker &> /dev/null; then
  print_success "Docker is installed."
else
  print_error "Docker is not installed. Please install Docker Desktop to run the Dev Container."
  exit 1
fi

# Check for VS Code CLI
if command -v code &> /dev/null; then
  print_success "VS Code CLI ('code') is installed."
else
  print_error "VS Code CLI ('code') is not found. Please ensure VS Code is installed and that the 'code' command is in your system's PATH."
  echo "(You can do this in VS Code by opening the Command Palette (Cmd+Shift+P) and running 'Shell Command: Install \"code\" command in PATH'.)"
  exit 1
fi

echo "\nAll prerequisites are met."

# --- Launch Environment ---
echo "Opening the project in VS Code..."
echo "If prompted, please click 'Reopen in Container' to launch the environment."

code .
