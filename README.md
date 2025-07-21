# AI-Powered Development Environment

This repository contains the blueprint for a standardized, AI-enhanced development environment. Its purpose is to provide a seamless, efficient, and consistent coding experience for every developer on the team, from the moment they join the project.

## The Story: Supercharge Your Workflow

In modern software development, consistency and efficiency are paramount. Setting up a new development machine can be a time-consuming and error-prone process, leading to the classic "it works on my machine" problem. Furthermore, the rise of powerful AI tools presents a new opportunity: to build an environment where AI is not just an add-on, but a core component of the workflow.

This project was created to solve these challenges. Our goal is to provide a "one-click" setup that launches a pre-configured, containerized development environment where every necessary tool, extension, and AI assistant is already installed and optimized. 

**The benefits for our team are clear:**

- **Zero Configuration Onboarding:** A new developer can clone this repository, open it in VS Code, and have a fully functional, production-ready environment running in minutes, not days.
- **Guaranteed Consistency:** The Dev Container ensures every team member uses the exact same dependencies, tools, and configurations, eliminating environment-related bugs.
- **AI at Your Fingertips:** We have integrated powerful AI assistants (Gemini and Claude) and advanced tools like Serena directly into the command line, ready to help with code generation, debugging, and complex problem-solving.
- **Automated Quality Control:** With built-in formatters and linters that run on every save, we maintain a high standard of code quality automatically, letting developers focus on logic instead of style.

This is more than just a collection of tools; it's a commitment to a better, faster, and smarter way of building software.

## Software & Packages

### Prerequisites (Install on your local machine)

- **Visual Studio Code:** The core IDE.
- **Docker Desktop:** To build and run the Dev Container.
- **VS Code Dev Containers Extension:** The extension that enables VS Code to connect to the containerized environment.

### Included in the Dev Container (Installed automatically)

This environment comes with the following tools and packages pre-installed and configured:

- **Languages & Runtimes:**
  - Python 3.10
  - Node.js
- **CLI Tools:**
  - **Google Gemini CLI (`gemini-cli`):** For interacting with Google's Gemini models.
  - **Anthropic Claude CLI (`claude-code`):** For interacting with Anthropic's Claude models.
  - **GitHub CLI (`gh`):** For managing GitHub repositories and workflows.
  - **UV (`uv`):** An extremely fast Python installer, used for running Serena.
- **VS Code Extensions (Server-side):**
  - `donjayamanne.python-extension-pack`: Comprehensive Python support.
  - `Vue.volar`: Official Vue.js support.
  - `GitHub.copilot`: Real-time AI code completion.
  - `esbenp.prettier-vscode`: Automated code formatting.
  - `dbaeumer.vscode-eslint`: Code linting and analysis.
  - `GitHub.vscode-pull-request-github`: Manage PRs and issues inside VS Code.

## Project File Structure

```
.devcontainer/
├── devcontainer.json       # Defines the dev environment, tools, and extensions
.vscode/
├── extensions.json         # Recommends VS Code extensions to the user
└── settings.json           # Workspace settings (e.g., format on save)
docs/
├── CODING_GUIDELINES.md    # Best practices for writing code in this project
└── ...                     # Other documentation
prompts/
├── system.md               # High-level instructions for the AI
├── project.md              # Project-specific context for the AI
└── custom.md               # User-defined, custom prompts
.eslintrc.js                # Configuration for the ESLint linter
.gitignore                  # Specifies files for Git to ignore
.prettierrc                 # Rules for the Prettier code formatter
AIIDEClient.md              # Original feature requirements document
README.md                   # This file: the project's main entry point
SETUP_PLAN.md               # The step-by-step plan used to build this environment
requirements.txt            # Python package dependencies (e.g., for Gemini CLI)
```

## Step-by-Step Installation Guide

For a fully automated setup, use the provided installation script. It will check for prerequisites and launch the environment for you.

1.  **Clone the Repository:**
    ```bash
    git clone <your-repository-url>
    cd <your-repository-name>
    ```

2.  **Run the Installer:**
    ```bash
    ./install.sh
    ```
    The script will verify your setup and open the project in VS Code.

3.  **Reopen in Container:** A pop-up will appear in the bottom-right corner of VS Code asking you to "Reopen in Container". Click it.
    - VS Code will now build the Docker container. This may take several minutes on the first run.

4.  **Done!** Once the container is built, you will be inside the fully configured development environment. You can now proceed to the verification checklist.

## Verification Checklist & Testing Procedure

To ensure everything is installed correctly, open a new terminal inside VS Code (`Terminal > New Terminal`) and run the following commands. Each command should return a version number or help text without errors.

- **Check Python:**
  ```bash
  python --version
  ```
- **Check Node.js:**
  ```bash
  node --version
  ```
- **Check GitHub CLI:**
  ```bash
  gh --version
  ```
- **Check Gemini CLI:**
  ```bash
  gemini-cli --version
  ```
- **Check Claude CLI:**
  ```bash
  claude-code --version
  ```
- **Check UV Installer:**
  ```bash
  uv --version
  ```

If all commands execute successfully, your AI-powered development environment is ready to use.
