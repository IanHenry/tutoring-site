#!/bin/bash
set -e

echo "Installing Quarto ${QUARTO_VERSION}..."

curl -L -o quarto.tar.gz "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"

tar -xzf quarto.tar.gz
mv "quarto-${QUARTO_VERSION}" "$HOME/quarto"
export PATH="$HOME/quarto/bin:$PATH"

echo "Quarto version:"
quarto --version

echo "Rendering site..."
quarto render

