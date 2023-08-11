#!/bin/bash

apt install bat

if [ ! -L "/usr/local/bin/bat" ]; then
    echo "Creating symbolic link..."
    sudo ln -s /usr/bin/batcat /usr/local/bin/bat
else
    echo "Symbolic link already exists."
fi
