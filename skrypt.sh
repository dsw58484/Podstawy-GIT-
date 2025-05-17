#!/bin/bash
git config --global user.name "Kacper"
git config --global user.email "dsw58484@student.dsw.edu.pl"

git init
git status

git add plik.sh
git commit -m "Dodano plik.sh"
git push --set-upstream orgin main

git log --oneline
git branch
git checkout -b nowy-brauchn
git merge nowy-branch
git branch -d nowy-branch

if [[ "$1" == "--date" ]]; then
  date
fi

if [[ "$1" == "--logs" ]]; then
  for i in {1..100}; do
    echo "plik log$i.txt" > "log$i.txt"
    echo "Utworzony przez skrypt.sh -- logs w dniu $(date)" >>"log$i.txt"
