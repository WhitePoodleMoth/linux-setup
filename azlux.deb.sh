#!/bin/bash

# Verificar se a entrada já existe no arquivo sources.list.d/azlux.list
if ! grep -q "azlux-archive-keyring.gpg" /etc/apt/sources.list.d/azlux.list; then
    echo "Adicionando entrada ao arquivo sources.list.d/azlux.list..."
    echo "deb [signed-by=/usr/share/keyrings/azlux-archive-keyring.gpg] http://packages.azlux.fr/debian/ stable main" | sudo tee -a /etc/apt/sources.list.d/azlux.list
fi

# Verificar se o arquivo azlux-archive-keyring.gpg já existe
if [ ! -f "/usr/share/keyrings/azlux-archive-keyring.gpg" ]; then
    echo "Baixando o arquivo azlux-archive-keyring.gpg..."
    sudo wget -O /usr/share/keyrings/azlux-archive-keyring.gpg https://azlux.fr/repo.gpg
fi

