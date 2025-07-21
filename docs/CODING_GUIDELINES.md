# Coding Guidelines

This document outlines the coding standards and best practices to be followed in this project.

## General Principles

- **Clarity and Readability:** Write code that is easy to understand and maintain.
- **Consistency:** Follow the established coding style and conventions.
- **Simplicity:** Prefer simple solutions over complex ones.

## Language-Specific Guidelines

### Python

- Follow the [PEP 8](https://www.python.org/dev/peps/pep-0008/) style guide.
- Use type hints for all function signatures.

### TypeScript

- Follow the [Google TypeScript Style Guide](https://google.github.io/styleguide/tsguide.html).
- Use interfaces for defining object shapes.

## Infrastructure as Code (Terraform)

- **Formatting:** Always run `terraform fmt` before committing.
- **Naming Conventions:** Use `snake_case` for all resources and variables.
- **Variables:** Define all variables in `variables.tf` with clear descriptions and, when possible, default values.
- **Outputs:** Use `outputs.tf` to expose important values from your modules.

## Commit Messages

- Follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) specification.