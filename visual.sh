#!/bin/bash

if ! grep -q "parse_git_branch() {" ~/.bashrc; then
  echo 'Adding parse_git_branch()'
  echo 'parse_git_branch() {' >> ~/.bashrc
  echo '  git branch 2>/dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/ (\1)/"' >> ~/.bashrc
  echo '}' >> ~/.bashrc
fi

if ! grep -q "export PS1=.*parse_git_branch.*" ~/.bashrc; then
  echo 'Defining PS1'
  echo 'export PS1="\[\033[38;5;10m\]\u@\h\[\033[00m\]:\[\033[38;5;14m\]\w\[\033[31m\]$(parse_git_branch)\[\033[00m\] $ "' >> ~/.bashrc
fi

