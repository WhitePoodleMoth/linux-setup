#!/bin/bash

if ! grep -q "azlux-archive-keyring.gpg" /etc/apt/sources.list.d/azlux.list; then
    echo "Adding entry to the sources.list.d/azlux.list file..."
    echo "deb [signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian/ stable main" | sudo tee -a /etc/apt/sources.list.d/azlux.list
fi

if [ ! -f "/usr/share/keyrings/azlux-archive-keyring.gpg" ]; then
    echo "Downloading the azlux-archive-keyring.gpg file..."
    sudo wget -O /usr/share/keyrings/azlux-archive-keyring.gpg https://azlux.fr/repo.gpg
fi
