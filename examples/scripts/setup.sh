#!/bin/bash
# Hermes + xurl One-Shot Setup Script
# Run: chmod +x setup.sh && ./bash setup.sh

set -e

echo "========================================="
echo "  Hermes + xurl Setup"
echo "========================================="
echo ""

# Check prerequisites
echo "Checking prerequisites..."

if ! command -v curl &> /dev/null; then
    echo "ERROR: curl is required. Install it first."
    exit 1
fi

echo "✓ curl found"

# Install Hermes
echo ""
echo "Installing Hermes..."
if ! command -v hermes &> /dev/null; then
    curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
    echo "✓ Hermes installed"
else
    echo "✓ Hermes already installed: $(hermes --version)"
fi

# Install xurl
echo ""
echo "Installing xurl..."
if ! command -v xurl &> /dev/null; then
    if command -v brew &> /dev/null; then
        brew install --cask xdevplatform/tap/xurl
        echo "✓ xurl installed via Homebrew"
    else
        curl -fsSL https://raw.githubusercontent.com/xdevplatform/xurl/main/install.sh | bash
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
        echo "✓ xurl installed via shell script"
        echo "  NOTE: You may need to restart your terminal or run:"
        echo "  source ~/.zshrc"
    fi
else
    echo "✓ xurl already installed"
fi

# Verify
echo ""
echo "Verifying installation..."
hermes --version && echo "✓ Hermes OK"
xurl --help > /dev/null 2>&1 && echo "✓ xurl OK"

echo ""
echo "========================================="
echo "  Setup Complete!"
echo "========================================="
echo ""
echo "Next steps:"
echo "  1. Run: hermes setup"
echo "  2. Select xAI Grok OAuth (SuperGrok Subscription)"
echo "  3. Complete the browser login"
echo "  4. Set up xurl auth:"
echo "     xurl auth apps add my-app --client-id YOUR_ID --client-secret YOUR_SECRET"
echo "     xurl auth oauth2 --app my-app"
echo "     xurl auth default my-app"
echo "  5. Launch: hermes"
echo "  6. Type: /xurl"
echo ""
