#!/bin/zsh


# Linux Config Save

echo linux config save :

cd $HOME/config/linux/

rm zshrc.sh rc0.sh

cp $HOME/.zshrc zshrc.sh
cp $HOME/.rc0 rc0.sh

echo .zshrc and .rc0 from home loaded into linux config file 
sleep 1

git add *
git commit -m "quick_save"
git push github_rsl07

sleep 1

# Subl User Config Save

echo going for ST config

cd $HOME/ST_USER
git add *
git commit -m "quick_save"
git push github_rsl07
