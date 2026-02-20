#!/usr/bin/env bash
set -e

# can be downloaded by running 
# curl -fsSL https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh | bash
#
# Or run
#
# wget -qO- https://raw.githubusercontent.com/diddy-boy/mini-pi-media-server/main/install.sh | bash

# Check for supporting files needed for the installer
echo "🔍 Checking for required tools..."
echo " You may be prompted for Sudo password. this is normal"
for tool in unzip curl; do
    if ! command -v $tool >/dev/null 2>&1; then
        echo "🔧 $tool is missing. Installing..."
        sudo apt-get update && sudo apt-get install -y $tool
    fi
done


REPO="diddy-boy/mini-pi-media-server"
BRANCH="main"

echo "========================================="
echo "     Mini Pi Media Server Installer"
echo "========================================="

# Create temp working directory
TMPDIR=$(mktemp -d)
cd "$TMPDIR"

echo "📦 Downloading project from GitHub..."
curl -fsSL "https://github.com/$REPO/archive/refs/heads/$BRANCH.zip" -o main.zip

echo "📂 Extracting files..."
unzip -q main.zip
cd "mini-pi-media-server-$BRANCH"

echo "🗜 Extracting setup package..."
SETUP_ZIP=$(ls -v pi-setup*.zip | tail -n 1)

if [[ -z "$SETUP_ZIP" ]]; then
    echo "❌ Could not find pi-setup zip file!"
	echo " Server Down or maintenance being performed"
	echo " Please try again later "
    exit 1
fi

echo "🗜 Installing Mini Pi Media Server Version ($SETUP_ZIP)"

unzip -q "$SETUP_ZIP"

echo "📁 Installing to ~/pi-setup"
rm -rf ~/pi-setup
cp -r pi-setup ~/

cd ~/pi-setup
chmod +x ./*.sh

echo "🚀 Starting installer..."
sudo ./mini-pi-setup.sh
sudo ./*.sh

echo "🧹 Cleaning up..."
rm -rf "$TMPDIR"

echo "✅ Installation complete!"
echo "Please reboot PC."
