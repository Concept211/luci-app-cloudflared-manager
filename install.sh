#!/bin/sh
#
# Quick installation script for LuCI App Cloudflare Tunnel Manager
#
# Usage: curl -sSL https://raw.githubusercontent.com/yourusername/luci-app-cloudflared-manager/main/install.sh | sh
#

set -e

PACKAGE_URL="https://github.com/yourusername/luci-app-cloudflared-manager/releases/download/v1.2.0/luci-app-cloudflared-manager_1.2.0_all.ipk"
TEMP_FILE="/tmp/luci-app-cloudflared-manager.ipk"

echo "Installing LuCI App Cloudflare Tunnel Manager..."

# Download package
echo "Downloading package..."
wget -O "$TEMP_FILE" "$PACKAGE_URL"

# Install
echo "Installing package..."
opkg install "$TEMP_FILE"

# Cleanup
rm -f "$TEMP_FILE"

echo "Installation complete!"
echo "Access the web interface at: http://your-router-ip/cgi-bin/luci/admin/services/cloudflared"
echo ""
echo "Next steps:"
echo "1. Configure your Cloudflare Tunnel credentials in /etc/cloudflared/cert.json"
echo "2. Navigate to Services → Cloudflare Tunnel in LuCI"
echo "3. Add your routes and click 'Apply & Restart Cloudflared'"
