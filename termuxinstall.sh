#!/data/data/com.termux/files/usr/bin/bash

# Download the v-testME file from GitHub and save it as vtestme
echo "📥 Downloading v-testME..."
curl -Lo vtestme https://raw.githubusercontent.com/ShadowPlasma2009/v-testME/main/v-testME

# Make the file executable
echo "Setting execution permissions..."
chmod +x vtestme

# Check for pyfiglet
echo "Checking for pyfiglet..."
if ! python3 -c "import pyfiglet" &>/dev/null; then
    echo "Installing pyfiglet..."
    pip install pyfiglet
else
    echo "Pyfiglet is already installed."
fi

# Check for colorama
echo "Checking for colorama..."
if ! python3 -c "import colorama" &>/dev/null; then
    echo "Installing colorama..."
    pip install colorama
else
    echo "Colorama is already installed."
fi

# Move the file to $PREFIX/bin
echo "Moving vtestme to $PREFIX/bin..."
mv vtestme $PREFIX/bin/

echo -e "\n Done! You can now run the app by typing: \033[1;32mvtestme\033[0m"
