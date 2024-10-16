### SUMMARY ====================================================================
#        				 (add altgr+² to find)
### DATA ARCHITECTURE
### COMMAND
### SUBLIME
### APPLICATION
### PHD
### AC
### CRONOS
### ASTER
### GEVIBUS
### PATH
#
# ==============================================================================

source ~/.zrc0

source $HOME/Config/linux/web_bookmark.sh
source $HOME/Config/linux/scope.sh
source $HOME/Config/linux/cdd.sh
source $HOME/.ls_colors

###############################################################################
# ¬ DATA ARCHITECTURE                            
###############################################################################

export DATA=$HOME/Data
export CONF=$HOME/Conf
export LINUX=$HOME/Config/linux
export MVP=$HOME/Images/mvp
export PROJ=$HOME/Projets
export CODE=$HOME/Code
export LIB=$HOME/Code/lib

export MNEMO=/data/rd/users/D51680

export USB=/media/d51680/usb-rsl
export SSD=/media/d51680/ssd-rsl


alias dsk="cd ~/Bureau; ls"
alias ddl="cd ~/Téléchargements; ls"
alias cod="cd ~/Code; ls "
alias lit="cd ~/Litterature; ls"
alias pro="cd ~/Projets; ls"
alias dat="cd ~/Data; ls"
alias med="cd /media/d51680/; ls"
alias red="cd ~/Projets/redaction; ls"
alias lec="cd ~/Litterature/lecture; ls"
alias cnf="cd ~/Config; ls "
alias cnt="cd ~/Conteneurs; ls "
alias pix="cd ~/Images; ls"
alias prz='cd ~/Presentation; ls'
alias usb='cd $USB; ls'
alias ssd='cd $SSD; ls'
alias lin='cd ~/Config/linux; ls'
alias doc='cd ~/Documents; ls'
alias mvp="cd ~/Images/mvp; ls"
alias lib="cd $HOME/Code/lib"
alias ast="cd ~/dev/codeaster/src"
alias asd="cd ~/dev/codeaster/docaster"


# -----------------------------------------------------------------------------
# Working Directories

alias dfb="cd /home/d51680/Code/fa33896;
		  echo 'DEFI_BASE_MODALE TEST FOLDER (ORTHO QZ FEATURE)\n';ls "


###############################################################################
# ¬ COMMAND
###############################################################################

alias tr1="tree -L 1"
alias tr2="tree -L 2"
alias tr3="tree -L 3"

alias ll="ls -rtlh"
alias du="du -hc"
alias xc="xclip -selection clipboard"
alias xdg="xdg-open"
alias c='clear'
alias txc="fc -ln -1 | xclip -selection clipboard"


# -----------------------------------------------------------------------------
# Save

alias save_github_config=". $LINUX/gh-save_config.sh"
alias save_ssd_folders=". $LINUX/ssd-save.sh"
alias save_mnemo=". $LINUX/mnemo-save.sh"


# -----------------------------------------------------------------------------
# Navigation

alias f=". $HOME/Config/linux/file.sh"
alias d=". $HOME/Config/linux/directory.sh"
alias x=". $HOME/Config/linux/execute.sh"

alias of=". $HOME/Config/linux/open_file.sh"
alias od=". $HOME/Config/linux/open_dir.sh"

alias fa=". $HOME/Config/linux/file_archived.sh"
alias da=". $HOME/Config/linux/directory_archived.sh"
alias ofa=". $HOME/Config/linux/open_file_archived.sh"
alias oda=". $HOME/Config/linux/open_dir_archived.sh"

alias wsp="$HOME/Config/linux/workspace.sh"

alias clp='rm $HOME/.pid_*'


###############################################################################
# ¬ SUBLIME                            
###############################################################################

export ST_PACK=$HOME/.config/sublime-text/Packages
export ST_USER=$ST_PACK/User

alias spk='cd $ST_PACK; ls'
alias sus='cd $ST_USER; ls'
alias snp='cd $ST_USER/snippet; ls'


###############################################################################
# ¬ VSCODE                            
###############################################################################

alias vs='export http_proxy=vip-users.proxy.edf.fr:3131 https_proxy=vip-users.proxy.edf.fr:3131; code --proxy-server="http=$http_proxy;https=$https_proxy" --no-sandbox'


###############################################################################
# ¬ APPLICATION 
###############################################################################

alias pandoc="pandoc -f markdown --pdf-engine=xelatex -V 'monofont:DejaVu Sans Mono'"

alias jabref='/opt/jabref/bin/JabRef & disown'

alias form="google-chrome --new-window 'https://forms.office.com/Pages/DesignPageV2.aspx' & disown"


alias ordo='firefox --new-window https://www.notion.so/Ordo-5eaaab45039745c18e42e1a418a9e78f'



###############################################################################
# ¬ PHD                            
###############################################################################

alias mvphd="eog $MVP/phd/* & disown"

# -----------------------------------------------------------------------------
# Manuscrit 

export BIB=$HOME/Litterature/phd/bib
export PHD=$HOME/Code/manuscript
export FIG=$HOME/Code/manuscript/figures

export REDAC=$HOME/Projets/redaction/


alias phd="cd $PHD; ls"
alias fig="cd $FIG; ls"
alias bib="cd ~/Litterature/phd/bib; ls"


alias clm='cd $PHD;
	rm *.fdb_latexmk ;
	rm *.gz; rm *.aux; rm *.fls; rm *.log; rm *.out; rm *.toc; rm *.bbl
	rm *.blg; rm *.lof; rm *.lot;
	rm *.glo; rm *.glsdefs; rm *.ist; 
	rm *.bak;
	echo ; ls'

alias manu="xdg-open $PHD/master.pdf"

alias qpm="cd $PHD
		   git add . ; 
		   git commit -m 'quick push manuscript' ; 
		   git push gitlab_t6e"

alias push-phd-usb="cd $PHD
				   git add . ; 
				   git commit -m 'usb push manuscript' ; 
				   git push usb"

alias ssd-pphd="cd $PHD
				git add . ; 
				git commit -m 'usb push manuscript' ; 
				git push ssd"


# -----------------------------------------------------------------------------
# lionel

export LIONEL=$HOME/Code/lionel

alias li='cd $LIONEL; ls'
alias tl="cd $LIONEL/test; ls"

alias lionel="$HOME/Code/lionel/run.py"


# -----------------------------------------------------------------------------
# charles

export CHARLES=$HOME/Code/charles
export CHARLESX=$HOME/Code/charlesX

alias ch='cd $CHARLES; ls'
alias cad='cd $CHARLES/calib_ad; ls'
alias chm='cd $CHARLES/calib_hm; ls'k
alias cal='cd $CHARLES/calib_hm_el_in; ls'

alias charles_hm="$HOME/Code/charles/calib_hm/charles_hm.py"
alias charles_ad="$HOME/Code/charles/calib_ad/charles_ad.py"
alias charles="$HOME/Code/charles/calib_hm_el_in/charles.py"

alias extract="$CHARLES/data_assembly/17-extraction.sh"


# -----------------------------------------------------------------------------
# Site data HPC analysis

export TDMS=/home/d51680/Projets/site_analysis/tdms
export BLCH=/home/d51680/Data/blyth_ch4
export MVPS=$MVP/site_analysis

alias mvps="eog $MVPS/* & disown"

alias dlo='cd /home/d51680/Projets/site_analysis/data_load;ls'
alias dst='cd /home/d51680/Projets/site_analysis/data_struct;ls'
alias dca='cd /home/d51680/Projets/site_analysis/data_calib;ls'

alias tdms='cd /home/d51680/Projets/site_analysis/tdms;ls'

alias chd='cd /home/d51680/Code/charles/data_assembly; ls'

alias bl='cd /home/d51680/Data/blyth'
alias bl2='cd $BLCH2; ls'
alias bl3='cd /home/d51680/Data/blyth_ch3/'
alias bl4='cd /home/d51680/Data/blyth_ch4/'

alias seq='chd;./calib_visu.py'
alias seqh='chd;./calib_visu_hydro.py'
alias seqa='chd;./calib_visu_aero.py'


alias nfe='chd;./24-nf_evolution.py'
alias dme='chd;./26-Dmean_evolution.py'

# -----------------------------------------------------------------------------
# Blyth Site Calibration

export CH_SITECAL=/home/d51680/Code/charles/calib_blyth
export CH_SD=/home/d51680/Code/charles/calib_blyth/data
export CH_SJ=/home/d51680/Code/charles/calib_blyth/jobs
export CHARLES_JOBS=/home/d51680/Code/charles/calib_blyth/jobs
export MVPC=$MVP/site_calibration
export MVPD=$MVP/site_defect
export PR_SITECAL=/home/d51680/Projets/site_calibration

alias mvpc=" eog $MVPC/*.png & disown"
alias mvpd=" eog $MVPD/*.png & disown"

alias dwgs="evince /home/d51680/Litterature/wind-turbine/blyth/sensors/A2-07-Instrumentation-Installation-as-built.pdf & disown"
alias dwgf="evince /home/d51680/Litterature/wind-turbine/blyth/foundation/BOD-107-05-BAM-DWG-00071_Drawing-GENERAL_ARRANGEMENT_LOCATION_A207.pdf & disown"
alias ila="evince /home/d51680/Litterature/eolien/blyth/study/BOD-107-05-BAM-REP-00008-A-04_Report-Integrated_Load_Analysis.pdf & disown"


alias chb='  cd $CH_SITECAL      ;ls'
alias chbd=' cd $CH_SITECAL/data ; ls'
alias chbj=' cd $CH_SITECAL/jobs ; ls'
alias prc='  cd $PR_SITECAL      ; ls'

alias charles=$CH_SITECAL/charles.py


alias mpl="of Data blyth_ch4 multiplot"

alias rch='$CH_SITECAL/calib_hydro_SSXi.py'
alias bch='$CH_SITECAL/batch_hydro.py'

alias bpl='$CH_SITECAL/plot_batch_result.py'

alias pl4='chb; ./_plot4_bat2-set3.py'

# -----------------------------------------------------------------------------
# CharlesX

alias cx='   cd $CHARLESX                            ; ls' 
alias cxd='  cd $CHARLESX/charles/data/              ; ls'
alias cxdw=' cd $CHARLESX/charles/data_processed/wdir; ls'
alias cxs='  cd $CHARLESX/data_site                  ; ls'
alias cxcb=' cd $CHARLESX/charles/calib_blyth        ; ls' 

alias rcx='$CHARLESX/run.sh'



###############################################################################
# ¬ AC
###############################################################################

source /home/d51680/Config/ac3d/path.sh
source /home/d51680/Config/ac3d/command.sh


###############################################################################
# ¬ CRONOS                            
###############################################################################

export CR_HOME=d51680@cronos.hpc.edf.fr:/home/d51680
export CR_WORK=d51680@cronos.hpc.edf.fr:/work
export CR_SCRATCH=d51680@cronos.hpc.edf.fr:/scratch

export CR_WORK_POWX=$CR_WORK/rd/powerx
export CR_CALIB=d51680@cronos.hpc.edf.fr:/scratch/rd/powerx/CHARLES
export CR_TDMS=d51680@cronos.hpc.edf.fr:/scratch/rd/powerx/CHARLES/tdms

export CR_SCRATCH_POWX=$CR_SCRATCH/rd/powerx
export CR_SCRATCH_USER=$CR_SCRATCH/users/d51680


alias qcr='$CHARLES/data_assembly/push_cronos.sh'
alias cr='ssh cronos'





###############################################################################
# ¬ ASTER  
###############################################################################

export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME=nvidia

source $HOME/Config/aster/compile.sh
source $HOME/Config/aster/debug.sh
source $HOME/Config/aster/function.sh

alias as="cd ~/dev/codeaster/src"
alias ast="cd ~/dev/codeaster/src/astest"

alias caf="compile_aster_fast"
alias ca="compile_aster" 

# -----------------------------------------------------------------------------
# Environnement SALOME MECA

# salome_meca-edf-2023.1.0-1-20221225-scibian-10 
alias sms="scibian-nvidia /home/d51680/Conteneurs/smeca2023.1.0 --shell "
alias smg="scibian-nvidia /home/d51680/Conteneurs/smeca2023.1.0"


alias run_aster="/home/d51680/dev/codeaster/install/mpi/bin/run_aster"




###############################################################################
# ¬ GEVIBUS                            
###############################################################################

export DIR_GEVIBUS="$HOME/dev/smeca/salome-gevibus"

alias gvb='cd $DIR_GEVIBUS'

alias gevibus_local="~/Config/gevibus/local.sh"

 # need to be kept alive
alias doc_gvb="timeout 1 ~/Config/gevibus/doc.sh; exit"			 



# gvb_auto - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

alias gva='cd /home/d51680/Code/gvb_cli'


###############################################################################
# ¬ PATH                         
###############################################################################


if [ -z "$SINGULARITY_CONTAINER" ]; then
    
	conda activate py_lionel

	export PATH=/usr/bin:/sbin:$LIB

	export PYTHONPATH=$PYTHONPATH:$LIB:$CODE
	export PY_LIONEL="/home/d51680/Logiciel/anaconda3/envs/py_lionel"
	alias py_lionel="$PY_LIONEL/bin/python"

	export CONDA_ENV=/home/d51680/Logiciel/anaconda/envs
	export PYTHONWARNINGS="ignore"


fi


if [[ $LOCAL_DOC_GVB ]]; then

	pkill -f chromium

	/usr/bin/chromium file:///opt/salome_meca/V2023.1.0_scibian_10/modules/GEVIBUS_202310/share/doc/salome/gui/gevibus/html/index.html & disown 

fi



alias qrun='caf;dfb;run_aster test_sdlv104a.export'