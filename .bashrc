
  1 # last update 02/17/18
  2 
  3 alias sbash='source ~/.bashrc'      # re-source this file
  4 alias svim='source ~/.vimrc'        # source vimrc
  5 
  6 alias vvim='vim ~/.vimrc'           # open vimrc
  7 alias vbash='vim ~/.bashrc'         # open bashrc 
  8 
  9 alias ls='ls -G'    # add colors
 10 alias la='ls -a'    # show all
 11 alias ll='ls -l'    # long list 
 12 alias lt='ls -l -t' # long list sorted by date
 13 alias c='clear'
 14 
 15 # Some Homebrew aliases
 16 # I think this will run all of the below, not sure about brew doctor
 17 # brew update  - Fetch the newest version of Homebrew and all formulae
 18 # brew upgrade - upgrade outdated formulae
 19 # brew prune   - remove dead symlinks from Homebrew prefix
 20 # brew doctor  - check for potential problems
 21 alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew
 22 doctor'
 23 
 24 # Remove duplicate history entries
 25 export HISTCONTROL=ignoreboth:erasedups # this line works
 26 
 27 # Joes Macbook Air(blue) | jpm(purple) | colon(default) | ~(purple) | $(default)
 28 export PS1="\[\033[1;34m\n\h\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\    ]\W\[\033[0m\]$ "
 29 
 30 # color chart is below
 31 txtblk='\e[0;30m' # Black - Regular
 32 txtred='\e[0;31m' # Red
 33 txtgrn='\e[0;32m' # Green
 34 txtylw='\e[0;33m' # Yellow
 35 txtblu='\e[0;34m' # Blue
 36 txtpur='\e[0;35m' # Purple
