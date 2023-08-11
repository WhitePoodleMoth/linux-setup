#!/bin.bash

apt install exa

if ! alias | grep -q "lle='exa -a --long'"; then
    echo "Adding 'lle' alias..."
    echo "alias lle='exa -a --long'" >> ~/.bashrc
fi

if ! alias | grep -q "llt='exa --tree --long'"; then
    echo "Adding 'llt' alias..."
    echo "alias llt='exa --tree --long'" >> ~/.bashrc
fi
