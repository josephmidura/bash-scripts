# define terminal colors
# last update 12/31/20

 
# Define a few colors (with nonprinting escapes included)
BLACK='\[\e[0;30m\]'        # Black
RED='\[\e[0;31m\]'          # Red
GREEN='\[\e[0;32m\]'        # Green
BROWN='\[\e[0;33m\]'        # Brown
BLUE='\[\e[0;34m\]'         # Blue
PURPLE='\[\e[0;35m\]'       # Purple
CYAN='\[\e[0;36m\]'         # Cyan
LGRAY='\[\e[0;37m\]'        # Light Gray

DGRAY='\[\e[1;30m\]'        # Dark Gray (Light Black)     
LRED='\[\e[1;31m\]'         # Light Red
LGREEN='\[\e[1;32m\]'       # Light Green
YELLOW='\[\e[1;33m\]'       # Yellow (Light Brown)
LBLUE='\[\e[1;34m\]'        # Light Blue 
LPURPLE='\[\e[1;35m\]'      # Light Purple
LCYAN='\[\e[1;36m\]'        # Light Cyan
WHITE='\[\e[1;37m\]'        # White (Light Light Gray)

BOLD='\[\e[1m\]'            # Bold the color
LIGHT='\[\e[1m\]'           # Lighten the color
INV='\[\e[7m\]'             # Set the background color
UND='\[\e[4m\]'             # Underline
BLINK='\[\e[5m\]'           # Text blinking
NC='\[\e[0m\]'              # No Color

## Old style
PS1="\[\e[1;31m\]\u \[\e[1;32m\]\d \[\e[4;32m\]\@\[\e[0;1;33m\] [\w]\n\
\[\e[0;35m\]  hist: \[\e[1;36m\]\! \[\e[0;35m\]cmd: \[\e[1;36m\]\#\
\[\e[1;34m\] > \$ \[\e[0m\]"

## New ssing variables
PS1="$NC\n$LRED\u $GREEN\d $UND\@$NC $YELLOW[\w]\n\
$PURPLE  hist: $CYAN\!$PURPLE cmd: $CYAN\# $LBLUE> \$ $NC"

# Set color scheme for ls
[ -e "$HOME/.dircolors" ] && DIR_COLORS="$HOME/.dircolors"

