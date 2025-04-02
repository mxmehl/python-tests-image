ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}-alpine

ENV PATH="$PATH:/root/.local/bin"

# Install Python packages
RUN pip install --no-cache-dir pipx && \
    pipx install poetry && \
    pipx ensurepath

# Install nodejs to run basic GitHub action
RUN apk add --no-cache nodejs
