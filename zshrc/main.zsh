ZSHRC="$(cd "$(dirname "$0")" ; pwd -P)"

HISTSIZE=50000 # session history size
SAVEHIST=100000 # saved history size

# grep colors (see manpage)
# http://www.gnu.org/software/grep/manual/html_node/Environment-Variables.html
GREP_COLORS='ms=01;31:mc=01;31:sl=01;01:cx=:fn=35:ln=32:bn=32:se=36'

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
autoload zmv ckd de stdfile

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
