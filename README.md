# AI-Powered Development Environment

This repository contains the blueprint for a standardized, AI-enhanced development environment. Its purpose is to provide a seamless, efficient, and consistent coding experience for every developer on the team, from the moment they join the project.

## The Story: Supercharge Your Workflow

In modern software development, consistency and efficiency are paramount. Setting up a new development machine can be a time-consuming and error-prone process. This project solves that challenge by providing a "one-click" setup that launches a pre-configured, containerized development environment where every necessary tool, extension, and AI assistant is already installed and optimized.

**The benefits for our team are clear:**

- **Zero Configuration Onboarding:** A new developer can be fully productive in minutes, not days.
- **Guaranteed Consistency:** The Dev Container eliminates "it works on my machine" bugs by ensuring everyone uses the exact same tools.
- **AI at Your Fingertips:** We have integrated powerful AI assistants (Gemini and Claude) and advanced tools like Serena directly into the environment.
- **Automated Quality Control:** Built-in formatters and linters maintain a high standard of code quality automatically.

This is more than just a collection of tools; it's a commitment to a better, faster, and smarter way of building software.

### A Day in the Life: From Feature Request to Refactor

Here’s how a developer, Alex, might use this environment:

**1. The New Feature:** Alex is tasked with adding a new, complex data export feature. He creates a new branch (`git checkout -b feature/data-export`) and starts coding. As he types, **GitHub Copilot** suggests entire functions, which he accepts and modifies, saving significant time.

**2. The Roadblock & The AI Assistant:** Alex hits a roadblock. The database query is more complex than he anticipated. Instead of spending an hour searching online, he opens the terminal and asks for help:
```bash
gemini-cli "Give me a Python example of an efficient SQLAlchemy query to join three tables (users, orders, products) and filter by a date range."
```
He gets a clean, correct code snippet back in seconds and integrates it into his code.

**3. The Refactoring Challenge & Serena AI:** The new feature works, but Alex notices that the new code is tightly coupled with an older, legacy module. He needs to refactor the old module first. This is a risky task, as he's not familiar with the legacy code. This is where **Serena AI** comes in.

First, he activates Serena for his `claude-code` assistant by running the one-time setup command in the terminal:
```bash
claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)
```
Now, `claude-code` is supercharged with Serena's deep understanding of the entire codebase. Alex asks for a refactoring plan:
```bash
claude-code "I need to refactor the 'legacy_data_handler.py' module. It's too complex. Please analyze it and suggest a plan to break it down into smaller, more manageable services. Identify any potential breaking changes."
```
Because Serena is active, the AI doesn't just give a generic answer. It reads and understands the specified file, analyzes its dependencies across the *entire project*, and provides a detailed, actionable refactoring plan that is aware of the specific risks and complexities of the codebase. Alex can now refactor with confidence.

**4. Shipping with Quality:** Every time Alex saves a file, the integrated **formatter** and **linter** automatically clean up his code, ensuring it meets project standards. When he's done, he uses the built-in **GitHub integration** to create a pull request, all without ever leaving his editor.

This seamless workflow—combining real-time AI assistance, deep codebase analysis, and automated quality checks—is the core of what this development environment provides.

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