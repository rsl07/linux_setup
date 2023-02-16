#!/bin/zsh


# Linux Config Save

cd $HOME/config/linux/

rm zshrc.sh rc0.sh

cp $HOME/.zshrc .zshrc.sh
cp $HOME/.rc0 rc0.sh

git add *
git commit -m "quick_save"
git push github_rsl07


# Subl User Config Save

cd $HOME/ST_USER
git add *
git commit -m "quick_save"
git push github_rsl07
