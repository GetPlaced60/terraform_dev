# Gemini CLI Setup Guide for Mac

This guide provides instructions on how to install and configure the Gemini CLI on a macOS environment and how to integrate it with your Git repositories.

## 1. Prerequisites
Ensure you have **Node.js 20.0.0 or higher** installed. You can verify your version with:
```bash
node -v
```

## 2. Installation
Install the Gemini CLI globally using npm:
```bash
npm install -g @google/gemini-cli
```

## 3. Authentication
To connect the CLI to your Google account:
1. Run the CLI:
   ```bash
   gemini
   ```
2. Select **Sign in with Google** when prompted.
3. Complete the authentication process in the browser window that opens.

## 4. Git Integration
Gemini CLI is "Git-aware" and integrates seamlessly with your repositories:
- **Automatic Detection**: Running `gemini` inside a Git repository root allows the CLI to automatically detect project context.
- **Gitignore Compliance**: The CLI respects your `.gitignore` file, ensuring that search and read tools do not process ignored files (e.g., `.terraform/`, `node_modules/`, or `.env`).
- **Project Context**: Use the `/init` command inside a new repository to generate a `GEMINI.md` file, which helps the CLI understand specific architectural rules and naming conventions.

## 5. Useful Commands
- `/stats model`: Check your current model usage and quota.
- `/help`: Display the full list of available commands and features.
- `@<path>`: Reference specific files or folders in your prompts for better context.
