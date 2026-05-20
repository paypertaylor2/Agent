#!/bin/bash
# Health check for Hermes + xurl setup
# Run: chmod +x health-check.sh && ./bash health-check.sh

PASS=0
FAIL=0

check() {
    if eval "$2" > /dev/null 2>&1; then
        echo "✓ $1"
        ((PASS++))
    else
        echo "✗ $1"
        ((FAIL++))
    fi
}

echo "========================================="
echo "  Hermes + xurl Health Check"
echo "========================================="
echo ""

echo "--- Installation ---"
check "Hermes installed" "command -v hermes"
check "xurl installed" "command -v xurl"
check "curl installed" "command -v curl"

echo ""
echo "--- Hermes ---"
check "Hermes version" "hermes --version"
check "Hermes config exists" "test -f ~/.hermes/config.yaml"
check "Hermes auth exists" "test -f ~/.hermes/auth.json"
check "Hermes .env exists" "test -f ~/.hermes/.env"

echo ""
echo "--- xurl ---"
check "xurl auth status" "xurl auth status"
check "xurl whoami" "xurl whoami"

echo ""
echo "--- Hermes Doctor ---"
hermes doctor 2>/dev/null || echo "⚠ hermes doctor not available"

echo ""
echo "========================================="
echo "  Results: $PASS passed, $FAIL failed"
echo "========================================="

if [ $FAIL -gt 0 ]; then
    echo ""
    echo "Troubleshooting:"
    echo "  - Hermes not found: Re-run the installer"
    echo "  - xurl not found: brew install --cask xdevplatform/tap/xurl"
    echo "  - Auth issues: xurl auth oauth2 --app my-app"
    echo "  - Config issues: hermes setup"
fi
