# Last update 7.18.15
#
##########  Aliases  ##########
#
alias sbash='source ~/.bashrc'          # Re-source this file
alias svim='source ~/.vimrc'            # Source the .vimrc
alias ls='ls --color'                   # Give colors to ls command 
alias ll='ls -l'                        # Long list
alias llx='ls -l -X'                    # Long list by type
alias la='ls -a'                        # Show hidden
alias lla='ls -l -a'                    # Show hidden and perms.
alias vbash='vim ~/.bashrc'             # Open .bashrc for editing 
alias vvim='vim ~/.vimrc'               # Open .vimrc for editing
alias rc="~/run_executables_script.bsh" # 
alias lx='ls -X'                        # Sort by type
alias lt='ll -t'                        # Long list sorted by date
alias cat='cat -n'                      # Line numbers
alias c='clear'                         #
alias grep='grep --color'               # Add color to greps
#
##########  Shortcuts  ##########
#
alias c0='cd ~/web_home/sp11/csce601/hw/00/c'   #
alias c1='cd ~/web_home/sp11/csce601/hw/01/c'   #
alias c2='cd ~/web_home/sp11/csce601/hw/02/c'   #
alias c3='cd ~/web_home/sp11/csce601/hw/03/c'   #
alias c4='cd ~/web_home/sp11/csce601/hw/04/java'   #
alias c5='cd ~/web_home/sp11/csce601/hw/05/java'   #
alias c6='cd ~/web_home/sp11/csce601/hw/06/java'   #
alias cdh='cd ~/web_home/sp11/csce601/hw'   #
alias cds='cd ~/web_home/sp11/csce601/hw/hwsolutions/03s/03c'   #
alias cdt='cd ~/web_home/sp11/csce601/tests'   #
#
##########  Function to ls after a cd  ##########
#cs()
#{
#    cd $1;
#    ls
#}
#
##########  Prompt Stuff  ##########
#
export PS1='\n\033[0;32m\]\u@\h \w>\n:: \[\033[0;38m\]'     # green prompt white text
#export PS1='\n\033[0;33m\]\u@\h \w>\n:: \[\033[0;32m\]'    # yellow prompt green text
#export PS1='\n\033[31;31m\]\u@\h \w>\n:: \[\033[0;32m\]'   # red prompt green text
#
##########  Other Stuff  ##########
#
export HISTCONTROL=ignoredumps          # Avoid successive duplicates in command history
export HISTCONTROL=ignoreboth           # Ignore same successive entries
HISTFILESIZE=300                        # Set history file to X max entries
#
##########  Show the Date After I Log in  ##########
#
echo -ne "${red}Today is:\t${cyan}" `date`; echo ""         # Show the date
#
##########  Doesn't work in Solaris  ##########
#
#COLUMNS=80
#LINES=24
#shopt -s checkwinsize
