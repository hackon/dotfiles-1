ZSHRC="$(cd "$(dirname "$0")" ; pwd -P)"

HISTSIZE=50000 # session history size
SAVEHIST=100000 # saved history size

# must come before oh-my-zsh
fpath=('/usr/local/share/zsh/site-functions' $fpath)

# oh-my-zsh configuration
source $ZSHRC/oh-my-zsh.zsh

# custom prompt 
source $ZSHRC/prompt.zsh

# custom aliases
source $ZSHRC/aliases.zsh

# load custom zsh functions
fpath=( $ZSHRC/functions "${fpath[@]}" )

# load functions 
autoload zmv ckd de

# lesspipe
# eval "$(lesspipe.sh)"

# load OS specific code
[ `uname` '==' "Linux" ] && source "$ZSHRC/linux.zsh";
[ `uname` '==' "Darwin" ] && source "$ZSHRC/mac.zsh";
[ $OSTYPE '==' "cygwin" ] && source "$ZSHRC/cygwin.zsh";

export EDITOR=vim

# set virtualenvwrapper working directory
export WORKON_HOME=$HOME/.virtualenvs

# load repo independent settings (can overwrite previous settings)
[ -f "$HOME/.environment" ] && source "$HOME/.environment"; 
