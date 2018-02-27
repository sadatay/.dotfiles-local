########################
# ENVIRONMENT SETTINGS #
########################


# Initialize NVM
source ~/.nvm/nvm.sh

# added by travis gem
[ -f /Users/josephlasala/.travis/travis.sh ] && source /Users/josephlasala/.travis/travis.sh

# Updates PATH for the Google Cloud SDK.
if [ -f '/Users/josephlasala/google-cloud-sdk/path.zsh.inc' ]; then
    source '/Users/josephlasala/google-cloud-sdk/path.zsh.inc';
fi

# Enables shell command completion for gcloud.
if [ -f '/Users/josephlasala/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/Users/josephlasala/google-cloud-sdk/completion.zsh.inc';
fi

# For some reason `iftop` needs this
export PATH="/usr/local/sbin:$PATH"

# Some perl stuff?  Maybe due to `cpanm`?
PATH="/Users/josephlasala/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/josephlasala/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/josephlasala/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/josephlasala/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/josephlasala/perl5"; export PERL_MM_OPT;

# It's official: emacs 4 life
export EDITOR=/usr/local/bin/emacsclient
export VISUAL=/usr/local/bin/emacsclient
export ALTERNATE_EDITOR=/usr/local/bin/emacs

# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH=/usr/local/bin:$PATH


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
