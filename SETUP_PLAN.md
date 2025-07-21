# VSCode AI IDE Setup Plan

This plan outlines the steps and recommended extensions to configure Visual Studio Code as an AI-powered Integrated Development Environment, based on the features described in `AIIDEClient.md`.

## Phase 1: Core Setup & Environment

### 1. Install Visual Studio Code
- Download and install the latest version of [VSCode](https://code.visualstudio.com/).

### 2. Dev Containers for Reproducible Environments
This is crucial for supporting both local and remote development consistently.
- **Extension:** [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- **Action:**
    - Create a `.devcontainer` directory in your project root.
    - Add a `devcontainer.json` file to define the development environment, including base image (e.g., Python, Node), extensions to pre-install, and post-create commands. This ensures every developer gets the same setup.

## Phase 2: Language & AI Assistance

### 1. Foundational Language Support
Install extensions for your core languages to get syntax highlighting, intellisense, and basic debugging.
- **Python:** [Python Extension Pack](https://marketplace.visualstudio.com/items?itemName=donjayamanne.python-extension-pack)
- **TypeScript/JavaScript:** VSCode has excellent built-in support.
- **Vue.js:** [Vue - Official](https://marketplace.visualstudio.com/items?itemName=Vue.volar)
- **FastAPI/Nuxt.js:** The Python and Vue extensions will provide most of the necessary support.

### 2. AI-Powered Coding Assistant
This will handle code completion, debugging assistance, documentation generation, and unit testing.
- **Primary Extension:** [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot)
- **Action:** Install the extension and authenticate with your GitHub account. Copilot Chat can be used for generating project plans, explaining code, and more.

### 3. CLI-Based LLM Integration
Integrate powerful command-line LLMs directly into the VSCode terminal.
- **Tools:** Gemini-CLI, Claude-Code, GitHub-CLI.
- **Action:**
    - Install these CLIs on your system or within your Dev Container's Dockerfile.
    - Use the integrated terminal in VSCode (`View > Terminal`) to run commands, generate code, or manage repositories.
    - You can create custom VSCode Tasks (`Terminal > Configure Tasks`) to streamline frequent commands.

## Phase 3: Code Quality & Workflow Automation

### 1. Code Formatting & Linting
Enforce consistent code style and catch errors early.
- **Formatter:** [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- **Linter:** [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- **Action:**
    - Install the extensions.
    - Configure them in your project's `.vscode/settings.json` to format on save:
      ```json
      {
        "editor.formatOnSave": true,
        "editor.defaultFormatter": "esbenp.prettier-vscode"
      }
      ```
    - Add configuration files to your project (`.prettierrc`, `.eslintrc.js`).

### 2. Git & Version Control
Streamline your Git workflow.
- **Built-in:** VSCode's source control panel is excellent for staging, committing, and viewing changes.
- **Extension:** [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
- **Action:** Install the extension to review pull requests, manage issues, and see CI/CD status directly within the IDE.

## Phase 4: Advanced Features & Customization

### 1. Spec-Driven Development & Project Management
For tools like "AWS Kiro", "Serena AI", or "Jira MCP", direct VSCode extensions may not be available. The primary integration path is via their CLIs.
- **Action:**
    - Install their respective CLIs within the Dev Container.
    - Use the integrated terminal for interaction.
    - Explore creating custom VSCode extensions for deeper integration if the tools provide APIs.

### 2. Prompt Engineering & Management
- **Action:**
    - Create a `prompts` directory in your project.
    - Store system, project, and custom prompts in `.md` or `.txt` files.
    - Use the Copilot Chat interface or integrated CLIs to load and use these prompts. You can use the terminal's `cat prompts/my-prompt.txt | gemini-cli` pattern.

### 3. Workspace Configuration
To share this setup with your team, commit the VSCode configuration.
- **Action:**
    - Create a `.vscode/extensions.json` file to recommend all the extensions listed here.
    - Create a `.vscode/settings.json` to define workspace-specific settings like format-on-save.
    - When a new developer opens the project, VSCode will prompt them to install the recommended extensions.

## Phase 5: Infrastructure as Code & CI/CD Automation

### 1. Environment Preparation
- **Action:**
    - Update `.devcontainer/devcontainer.json` to install the `terraform` and `gcloud-cli`.
    - Update `docs/CODING_GUIDELINES.md` with a new section for Terraform standards.
    - Update `SETUP_PLAN.md` to include the official plan for Phase 5.

### 2. Terraform Foundation (IaC)
- **Action:**
    - Create the `terraform/` directory with `main.tf`, `variables.tf`, `providers.tf`, and a `.gitignore` file.

### 3. GitHub Actions for CI/CD (Automation)
- **Action:**
    - Create the `.github/workflows/` directory.
    - Create the `ci.yml` workflow for validation.
    - Create the `cd.yml` workflow for deployment.

### 4. Documentation
- **Action:**
    - Update the main `README.md` with a new "Infrastructure & Deployment" section.