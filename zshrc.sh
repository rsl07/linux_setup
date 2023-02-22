
source ~/.zrc0
source $HOME/Config/linux/web_bookmark.sh
source $HOME/Config/linux/scope.sh
source $HOME/Config/linux/cdd.sh


############################# ENVIRONMENT ######################################


export DATA=$HOME/Data
export CONF=$HOME/Conf
export LINUX=$HOME/Config/linux

export ST_PACK=$HOME/.config/sublime-text-3/Packages
export ST_USER=$ST_PACK/User


# Python Env -------------------------------------------------------------------

conda activate py_lionel

export LIONEL=$HOME/Code/lionel
export CHARLES=$HOME/Code/charles

export PYTHON_PATH=$LIONEL:$LIONEL/test:$LIONEL/module:$PYTHON_PATH
export PYTHON_PATH=$LIONEL/module/func:$CHARLES:$PYTHONPATH

export CONDA_ENV=/home/d51680/Logiciel/anaconda/envs

export PYTHONWARNINGS="ignore"


export PATH="/sbin":"/home/d51680/Code/lionel":$PATH


############################### ALIASES ########################################


# directory navigation ---------------------------------------------------------

alias dsk="cd ~/Bureau"
alias ddl="cd ~/Téléchargements"
alias li='cd $LIONEL'
alias ch='cd $CHARLES'
alias tl="cd $LIONEL/test"

alias cnf="cd $HOME/Config"
alias phd="cd $HOME/Code/manuscript"
alias lin='cd $HOME/Config/linux'
alias doc='cd ~/Documents'


alias spk='cd $ST_PACK; ls'
alias sus='cd $ST_USER; ls'


# file manager -----------------------------------------------------------------

alias f=". $HOME/Config/linux/file.sh"
alias d=". $HOME/Config/linux/directory.sh"

alias of=". $HOME/Config/linux/open_fil.sh"
alias od=". $HOME/Config/linux/open_dir.sh"

alias wsp="$HOME/Config/linux/workspace.sh"

alias x=". $HOME/Config/linux/execute.sh"



# command ----------------------------------------------------------------------

alias ghsave_config=". $LINUX/ghsave_config.sh"

alias subl='subl' 
alias src='subl $HOME/.zshrc'
alias rc="nano $HOME/.bashrc"

alias tr1="tree -L 1";alias tr2="tree -L 2";alias tr3="tree -L 3"

alias lcl='phd; rm *.aux *.dvi *.fdb_latexmk *.fls *.log *.out *.toc *.bbl *.' 						

alias lionel="python $HOME/Code/lionel/lionel.py"



