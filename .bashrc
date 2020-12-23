#force_color_prompt=yes


# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
    ;;
*)
    ;;
esac



alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias gonas='cd /share/nas165/chengsam/'
alias go167='cd /share/nas167/chengsam/'
alias go165='cd /share/nas165/chengsam/'
alias QAQ='echo QAQ'

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
    ;;
*)
    ;;

esac

#dircolors-moonshine
declare -x LS_COLORS='ow=37;42:no=00;38;5;230:fi=00;38;5;230:di=01;38;5;143:ln=07;38;5;106:or=07;38;5;160:pi=07;38;5;137:ex=00;38;5;160:so=01;38;5;143:do=01;38;5;143:bd=01;38;5;137:cd=01;38;5;137:*.tar=00;38;5;96:*.tgz=00;38;5;96:*.arj=00;38;5;96:*.taz=00;38;5;96:*.lzh=00;38;5;96:*.lzma=00;38;5;96:*.tlz=00;38;5;96:*.txz=00;38;5;96:*.zip=00;38;5;96:*.z=00;38;5;96:*.Z=00;38;5;96:*.dz=00;38;5;96:*.gz=00;38;5;96:*.lz=00;38;5;96:*.xz=00;38;5;96:*.bz2=00;38;5;96:*.bz=00;38;5;96:*.tbz=00;38;5;96:*.tbz2=00;38;5;96:*.tz=00;38;5;96:*.deb=00;38;5;96:*.rpm=00;38;5;96:*.jar=00;38;5;96:*.rar=00;38;5;96:*.ace=00;38;5;96:*.zoo=00;38;5;96:*.cpio=00;38;5;96:*.7z=00;38;5;96:*.rz=00;38;5;96:*.apk=00;38;5;96:*.gem=00;38;5;96:*.jpg=00;38;5;220:*.JPG=00;38;5;220:*.jpeg=00;38;5;220:*.gif=00;38;5;220:*.bmp=00;38;5;220:*.pbm=00;38;5;220:*.pgm=00;38;5;220:*.ppm=00;38;5;220:*.tga=00;38;5;220:*.xbm=00;38;5;220:*.xpm=00;38;5;220:*.tif=00;38;5;220:*.tiff=00;38;5;220:*.png=00;38;5;220:*.PNG=00;38;5;220:*.svg=00;38;5;220:*.svgz=00;38;5;220:*.mng=00;38;5;220:*.pcx=00;38;5;220:*.dl=00;38;5;220:*.xcf=00;38;5;220:*.xwd=00;38;5;220:*.yuv=00;38;5;220:*.cgm=00;38;5;220:*.emf=00;38;5;220:*.eps=00;38;5;220:*.CR2=00;38;5;220:*.ico=00;38;5;220:*.mov=00;38;5;208:*.MOV=00;38;5;208:*.mpg=00;38;5;208:*.mpeg=00;38;5;208:*.m2v=00;38;5;208:*.mkv=00;38;5;208:*.ogm=00;38;5;208:*.mp4=00;38;5;208:*.m4v=00;38;5;208:*.mp4v=00;38;5;208:*.vob=00;38;5;208:*.qt=00;38;5;208:*.nuv=00;38;5;208:*.wmv=00;38;5;208:*.asf=00;38;5;208:*.rm=00;38;5;208:*.rmvb=00;38;5;208:*.flc=00;38;5;208:*.avi=00;38;5;208:*.fli=00;38;5;208:*.flv=00;38;5;208:*.gl=00;38;5;208:*.m2ts=00;38;5;208:*.divx=00;38;5;208:*.webm=00;38;5;208:*.aac=00;38;5;214:*.au=00;38;5;214:*.flac=00;38;5;214:*.mid=00;38;5;214:*.midi=00;38;5;214:*.mka=00;38;5;214:*.mp3=00;38;5;214:*.mpc=00;38;5;214:*.ogg=00;38;5;214:*.ra=00;38;5;214:*.wav=00;38;5;214:*.m4a=00;38;5;214:*.pdf=00;38;5;109:*.PDF=00;38;5;109:*.html=00;38;5;109:*.HTML=00;38;5;109:*.doc=00;38;5;109:*.docx=00;38;5;109:*.ppt=00;38;5;109:*.pptx=00;38;5;109:*.odt=00;38;5;109:*.odp=00;38;5;109:*.epub=00;38;5;109:*.pl=00;38;5;179:*.PL=00;38;5;179:*.py=00;38;5;179:*.pm=00;38;5;179:*.tt=00;38;5;179:*.yml=00;38;5;179:*.sql=00;38;5;179:*.css=00;38;5;179:*.js=00;38;5;179:*.sh=00;38;5;179:*.R=00;38;5;179:*.r=00;38;5;179:*.hs=00;38;5;179:*.rb=00;38;5;179:*.cc=00;38;5;179:*.c=00;38;5;179:*.lua=00;38;5;179:*.vim=00;38;5;179:*.m=00;38;5;179:*.1=00;38;5;137:*.h=00;38;5;137:*.tex=00;38;5;137:*.bib=00;38;5;137:*.Rd=00;38;5;137:*.rmd=00;38;5;137:*.Rmd=00;38;5;137:*Makefile=00;38;5;94:*do=00;38;5;94:*Doxyfile=00;38;5;94:*config=00;38;5;94:*.conf=00;38;5;94:*.cfg=00;38;5;94:*.txt=00;38;5;230:*.md=00;38;5;230:*.xlm=00;38;5;245:*.xls=00;38;5;245:*.xlsx=00;38;5;245:*.csv=00;38;5;245:*.tsv=00;38;5;245:*.Rds=00;38;5;245:*.rds=00;38;5;245:*.RDS=00;38;5;245:*.Rdata=00;38;5;245:*.RData=00;38;5;245:*.RDATA=00;38;5;245:*.sav=00;38;5;245:*.mat=00;38;5;245:*.json=00;38;5;245:*README=07;38;5;230:*README.txt=07;38;5;230:*README.md=07;38;5;230:*README.markdown=07;38;5;230:*TODO=07;38;5;230:*todo=07;38;5;230:*NOTE=07;38;5;230:*note=07;38;5;230:*.log=00;38;5;230:*.bak=00;38;5;238:*.aux=00;38;5;238:*.lof=00;38;5;238:*.lol=00;38;5;238:*.lot=00;38;5;238:*.out=00;38;5;238:*.toc=00;38;5;238:*.bbl=00;38;5;238:*.blg=00;38;5;238:*~=00;38;5;238:*#=00;38;5;238:*.part=00;38;5;238:*.incomplete=00;38;5;238:*.swp=00;38;5;238:*.tmp=00;38;5;238:*.temp=00;38;5;238:*.o=00;38;5;238:*.pyc=00;38;5;238:*.class=00;38;5;238:*.cache=00;38;5;238:'

#origin
#declare -x LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

# -- 舊的新版espnet會報錯 --
# CUDAROOT=/usr/local/cuda
#NCCL_ROOT=/usr/local/nccl-2.2.12

alias python=python3
CUDAROOT=/usr/local/cuda-10.0

export PATH=$CUDAROOT/bin:$PATH
export LD_LIBRARY_PATH=$CUDAROOT/lib64:$LD_LIBRARY_PATH
export CFLAGS="-I$CUDAROOT/include $CFLAGS"
export CUDA_HOME=$CUDAROOT
export CUDA_PATH=$CUDAROOT


# not set the multiple GPUs 

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/share/homes/chengsam/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/share/homes/chengsam/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/share/homes/chengsam/miniconda3/etc/profile.d/conda.sh"
#    else
        export PATH="/share/homes/chengsam/miniconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

