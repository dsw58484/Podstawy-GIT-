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

if [[ "$1" == "--logs" ]]; then
  count=${2:-100}
  for ((i=1;i<=count;i++)); do
    echo "plik log$1.txt" > "log$1.txt"
    echo "Utworzony przez skrypt.sh --logs $count w dniu $(date)" >> "log$1.txt"
  done
fi

fi [[ "$1" == "--help" ]]; then
   echo "--date      : wyświetla dzisiejszą datę"
   echo "--logs [N]  : tworzy pliki log1.txt ... logN.txt"
   echo "--help      : pokazuje wszystkie dostępne opcje"
fi
