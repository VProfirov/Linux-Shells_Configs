#### .OH-MY-ZSH DEFAULTING FIXES ######### MANUALY FIX (for now)
# destination: ~/.oh-my-zsh/lib/directories.zsh
# OVERRIDES /etc/profile.d/aliases
# Example: section Aliases for "ls => l; la; ll; ..."


######################### SOURCING LOCAL SCRIPTS/script-like-apps
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
######################### END SOURCING LOCAL SCRIPTS

######################### SOURCING NODE.JS
# NB! Better install through "dnf install #
# Otherwise use older version (dl+tar=>export ../bin to PATH)
# Extra Node Versions:
export PATH="$HOME/tools/node-v14.15.4-linux-x64/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
######################### END SOURCING NODEJS

######################### SOURCING PYTHON (pip) SCRIPTS
# Exporting 'home/$USER/.local/bin' created by 'pip install ...'
 export PATH=$HOME/.local/bin:$PATH
######################### END SOURCING PYTHON SCRIPTS


######################### SOURCING GOLANG SCRIPTS/BINARIES
export GOPATH=$HOME/.go
######################### END SOURCING GOLANG SCRIPTS/BINARIES

######################### SOURCING RUBY SCRIPTS
# Exporting 'home/$USER/.local/bin' created by 'pip install ...'
 export PATH=$HOME/bin:$PATH
######################### END SOURCING RUBY SCRIPTS
#
# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"

# Path to the plugin manager ZPLUG installation.
export ZPLUG="/home/$USER/.zplug"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
##ZSH_THEME="robbyrussell"
##ZSH_THEME="agnoster"

ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_DISABLE_RPROMPT=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="▶"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S|%d.%m.%y}"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time newline vi_mode ssh command_execution_time)
#rbenv virtualenv aws_eb_env
# newline :=> works only on left-side_p9k and both-sides_p10k


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
  DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
 ## Use to find what aliases are active sorted by association with program!
 ## Use instead of alias => "aliases" (acs - for listing)
  aliases

 ## Suggests an installation of a package that is aksed to execute but doesn't exist yet
  command-not-found

 ## I have no idea what is this used for as of now - so I susspend it
  # terminitor

  git

 ## using "bat -l man" in our .zshrc for actual good man colorization instead
 ## of .oh-my-zsh plugins
  colorize
  
 ## This plugin adds a fish-like interactive tab completion for the `cd` command.
  zsh-interactive-cd 
  zsh-navigation-tools

 ## docker plugins
  docker
  docker-compose
 ## docker-machine # not needed at this moment


 ## This plugin defines the [z command](https://github.com/rupa/z) that tracks your most visited directories and allows you to access them with very few keystrokes.
  z

 ## This plugin defines a function called `extract` that extracts the archive file you pass it, and it supports a wide variety of archive filetypes.
  extract 
  
 ## vi-mode (.oh-my-zsh has a default), but we will try using
 ## https://github.com/Nyquase/vi-mode 
 ## NOTE: 
 ## Inserting it here in this plugins=(...) section means that we added it
 ## manually out side of the .oh-my-zsh framework as standalone omz*
 ## integreated plugin in ~/.oh-my-zsh/custom/plugins
 ## Custome Plugins are inserted after the ones in side the omz* freamework
 ## and overrides them!
  #vi-mode
 ## NOTE: the same way we can over ride those all omz* plugins with the
 ## fallowup inerstion from within the ZPLUG and thus sometimes create
 ## conflics. ZPLUG has it is own layering-confilct resolver (defer:0-3)
 ## CHECK: Below the ZPLUG info
  
 ## terminal-sharing tools
  tmux

 ## vagrant
   vagrant
   vagrant-prompt

)

###### ADDITIONAL sub-configs of .oh-my-zsh plugins:
# docker:
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes


###### SOURCES (last one overrides previous) (#imporant!):

############################## OH-MY-ZSH(zsh framework) SOURCING: 01st load =>
source $ZSH/oh-my-zsh.sh

# All of the above variables are zsh-default and are oh-my-zsh compatible.
# That being said, with the export ZSH=~/.oh-my-zsh/
# all fallowing "default" behavior is furder modified bt the oh-my-zsh init script
# Including the section with the plugin listing: plugin = {...}

# NB! here the sourcing is of oh-my-zsh is done last, compared to the zplug's
# sourcing, below. Zplug has a "zplug load" section after it's init.

############################## ZPLUG(zsh package manager) SOURCING: 02rd load =>
# NOTE: 
# 1. zplug has a SAMPLE .zshrc showing zplug addons which we add here
# direclty
# 2. zplug uses .zplug/packages.zsh to load/manage and monitor packages installed
#    through ZPLUG and internaly. The ones below (zplug-doctor, etc..)
#    are loaded externaly-to-zplug, but still managed by it
# 3. These packages are located in .zplug/cache

# The backbone of zplug =>
source $ZPLUG/init.zsh

### ZPLUG configuration
#ZPLUG_SUDO_PASSWORD=
#ZPLUG_PROTOCOL=ssh

# Plugins installation/load goes below

#zplug "b4b4r07/ultimate", as:theme
zplug 'b4b4r07/zplug-doctor', lazy:yes

#zplug 'b4b4r07/zplug-cd', lazy:yes
## adds more advanced features to the "cd" command
zplug "b4b4r07/enhancd", use:init.sh
## enchancd has some bug currently when looking into some unvisited dirs throwing an error(-->) but working - the files or directory do exist
## error example: cd /etc/ssh/ssh_config.d --> find: ‘/etc/ssh\n/etc\n/’: No such file or directory


zplug 'b4b4r07/zplug-rm', lazy:yes

#zplug 'nyquase/vi-mode' 
## adds different cursors (beem vs block) for Insert Mode and Visual Mode, among other things
zplug 'nyquase/vi-mode', defer:2

#zplug 'zsh-users/zsh-syntax-highlighting', defer:2
#zplug 'zdharma/fast-syntax-highlighting', defer:2
zplug 'zdharma-continuum/fast-syntax-highlighting', defer:2
zplug 'b4b4r07/zsh-vimode-visual', defer:3

zplug 'zsh-users/zsh-completions', defer:3
zplug 'zsh-users/zsh-autosuggestions', defer:2

#zplug 'bhilburn/powerlevel9k', use:"powerlevel9k.zsh-theme"
#zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

#zplug load --verbose
zplug load

### NO FOR NOW  ##################### ZSNAP SOURCING: 3rd load ==>
## GREAT PROJECT, but it is all in one that is missing things and is too eager
#source ~/.zsh-snap/repos/zsh-snap/znap.zsh
# PLUGINS:
# znap source marlonrichert/zsh-autocomplete

############################## User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

######################### MANAGED HISTORY
#
# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias for hstr
setopt histignorespace           # skip cmds w/ leading space from history
export HSTR_CONFIG=hicolor       # get more colors
# emacs mode/keymap (default)
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
# There is a kernel related problem with HSTR so here is the fix (if needed) --> sysctl -w dev.tty.legacy_tiocsti=1
# vi mode/keymap
#bindkey -M vicmd -s '^R' ### widget 

########################## ALIASES
#
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# vi alias - work-around for the sudo='sudo '(sudo-alias loading)  { What is the order of alias related file loading?}
# unalias vi
# unalias vim
## ORIGINAL SOLUTION for unalias-ing vim
[ "$(type -w vi)" = 'vi: alias' ] && unalias vi
[ "$(type -w vim)" = 'vim: alias' ] && unalias vim
[ "$(type -w mc)" = 'mc: alias' ] && unalias mc

# FOR FEDORA X11 to be able to copy to clipboard on vim-type-selection with
# visual mode (we also need vim-X11.rpm)
alias vim='vimx'
# or # alias vim=gvim

########################### EXTERNAL  TOOLS AND PLUNGS INITS
# If such tools/plugins don't exist in the used frameworks (.oh-my-zsh) or plugin-managers (zplug)
#
# >>>> Vagrant command completion (start)
#fpath=(/opt/vagrant/embedded/gems/2.2.16/gems/vagrant-2.2.16/contrib/zsh $fpath)
#compinit
# <<<<  Vagrant command completion (end)


########################### EXPORTS: editors;etc...
# default editor:
export EDITOR="/usr/bin/nvim"
# man page re-read -> colorizing with bat (better substitue of cat) NOTE: requires: bat
export MANPAGER='sh -c '\''col -bx | bat -l man -p'\'
export MANROFFOPT="-c"


#### Quick nvim install: 
# nvim-config from: https://github.com/jdhao/nvim-config
# ref and info(how-to-install): https://github.com/jdhao/nvim-config/blob/nvim-lsp/docs/README.md
# use :PackerStatus :PackerUpdate :PackerInstall :PackerStatus :PackerLoad (name of package un-loaded from the status)
# ref: https://github.com/wbthomason/packer.nvim#quickstart


########################### ADDITIONAL PACKAGE MANAGERS
# HOMEBREW : https://docs.brew.sh/Homebrew-on-Linux
# ADD # eval $(~/.linuxbrew/bin/brew shellenv)
#
#

## ALIASES overwriting the system-default-overwrites (bash and zsh's system overwrites differ a bit. Addressing the file /etc/profile.d/colorls.sh that overwrites aliases.sh for ls and a few others)
# SOLUTION: we are sourcing  the aliases.sh file. Either from the source file or from the symlink used by the /etc/profile.d/aliases.sh --> NOTE: care for the permissions: other-read)
# BTW: Which (aliases.sh as well as colorls.sh) has no shell-to-run definition (research why)
#
#source /etc/localuser.profile.d/shell-prompt/generic/aliases.sh
source /etc/profile.d/aliases.sh
## ALIASES if you have any other aliases define them after this sourcing line. NOTE: aliases.sh are custome aliases definition ment ot be system-wide and shell-wide (bash, zsh or any other)
#alias X='command "long-sub-command"'

