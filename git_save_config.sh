#!/bin/zsh


# Linux Config Save

# Proxy for crontab 
export PROXY="http://vip-users.proxy.edf.fr:3131"
export http_proxy=$PROXY
export https_proxy=$PROXY
export HTTP_PROXY=$PROXY
export HTTPS_PROXY=$PROXY
export ftp_proxy=$PROXY
export FTP_PROXY=$PROXY
export no_proxy="localhost,edf.fr"


###############################################################################
# GitHub Save
###############################################################################


echo '> LINUX CONFIG GITHUB SAVE ============================================\n'

cd /home/d51680/Config/linux/ # _______________________________________________

git add .
git commit -m "git_save_config.sh"
git push 


cd /home/d51680/Config/linux/ # _______________________________________________

git add .
git commit -m "git_save_config.sh"
git push 

cd /home/d51680/.config/sublime-text/Packages/User # __________________________

git add .
git commit -m "git_save_config.sh"
git push 


cd /home/d51680/Code/lib # ____________________________________________________

git add .
git commit -m "git_save_config.sh"
git push 


###############################################################################
# GitLab Save
###############################################################################


echo '\n\n'
echo '> LIB GITLAB SAVE =====================================================\n'

cd /home/d51680/Code/lib # _____________________________________________________

git add .
git commit -m "git_save_config.sh"
git push 
 

###############################################################################
# Dotfiles Save
###############################################################################

echo '\n\n'
echo '> DOTFILES GITHUB SAVE ================================================\n'

cd /home/d51680/dotfiles # _____________________________________________________

git add .
git commit -m "git_save_config.sh"
git push 


cd