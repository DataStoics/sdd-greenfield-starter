FROM mcr.microsoft.com/devcontainers/python:3.12

# Install global python tools
RUN pip install --upgrade pip && \
    pip install uv pytest pytest-asyncio httpx pytest-cov

# Install Node.js 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g @google/gemini-cli

# Switch to vscode user for user-specific installations
USER vscode

# Install specify-cli via uv
RUN uv tool install specify-cli --from git+https://github.com/github/spec-kit.git
