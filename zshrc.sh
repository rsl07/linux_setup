
source ~/.zrc0
source $HOME/config/linux/web_bookmark.sh
source $HOME/config/linux/scope.sh
source $HOME/config/linux/cdd.sh


############################# ENVIRONMENT ######################################


export DATA=$HOME/data
export CONF=$HOME/conf
export LINUX=$HOME/config/linux

export ST_PACK=$HOME/.config/sublime-text-3/Packages
export ST_USER=$ST_PACK/User


# Python Env -------------------------------------------------------------------

conda activate py_lionel

export LIONEL=$HOME/code/lionel
export CHARLES=$HOME/code/charles

export PYTHON_PATH=$LIONEL:$LIONEL/test:$LIONEL/module:$PYTHON_PATH
export PYTHON_PATH=$LIONEL/module/func:$CHARLES:$PYTHONPATH

export CONDA_ENV=/home/d51680/logiciel/anaconda/envs

export PYTHONWARNINGS="ignore"



export PATH="/sbin":"/home/d51680/code/lionel":$PATH


############################### ALIASES ########################################


# directory navigation ---------------------------------------------------------

alias dsk="cd ~/Desktop"
alias ddl="cd ~/Downloads"
alias li='cd $LIONEL'
alias ch='cd $CHARLES'
alias tl="cd $LIONEL/test"

alias cnf="cd $HOME/config"
alias lat="cd $HOME/code/latex"
alias phd="cd $HOME/code/latex/phd"
alias lin='cd $HOME/config/linux'
alias doc='cd ~/Documents'


alias spk='cd $ST_PACK'
alias sus='cd $ST_USER'


# file manager -----------------------------------------------------------------

alias f=". $HOME/config/linux/file.sh"
alias d=". $HOME/config/linux/directory.sh"

alias of=". $HOME/config/linux/open_file.sh"
alias od=". $HOME/config/linux/open_dir.sh"

alias wsp="$HOME/config/linux/workspace.sh"

alias x=". $HOME/config/linux/execute.sh"



# command ----------------------------------------------------------------------

alias save_github=". $LINUX/save_github.sh"

alias subl='subl -n' 
alias src='subl $HOME/.zshrc'
alias rc="nano $HOME/.bashrc"

alias tr1="tree -L 1";alias tr2="tree -L 2";alias tr3="tree -L 3"

alias lcl='phd; rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.toc *.bbl *.' 						

alias p="python -i;"

alias lionel="python /home/rsl/code/lionel/lionel.py"



