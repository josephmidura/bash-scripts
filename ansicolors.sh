#!/bin/sh

# last update 1/15/21

# Use these variables to easily have different color and format
# output. Make sure to output the reset sequence after colors
# (f = foreground, b = background), and use the 'off' feature 
# for anything turned on.

# initialize (f = foreground, b = background)
initializeANSI()
{
  esc=""

  blackf="${esc}[30m";   redf="${esc}[31m";    greenf="${esc}[32m"
  yellowf="${esc}[33m"   bluef="${esc}[34m";   purplef="${esc}[35m"
  cyanf="${esc}[36m";    whitef="${esc}[37m"
  
  blackb="${esc}[40m";   redb="${esc}[41m";    greenb="${esc}[42m"
  yellowb="${esc}[43m"   blueb="${esc}[44m";   purpleb="${esc}[45m"
  cyanb="${esc}[46m";    whiteb="${esc}[47m"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

  reset="${esc}[0m"
}

# note in this first use that switching colors doesn't require a reset
# first - the new color overrides the old one.

initializeANSI

cat << EOF
${yellowf}This is a phrase in yellow ${redb}and also red${reset} text reset
${boldon}This is bold ${ulon}this is underlined${reset} text reset
${ulon}This is underlined${uloff} and this is not
${italicson}This is italics${italicsoff} and this is not
${invon}This is inverted${invoff} and this is not
${yellowf}${redb}Warning I Style${yellowb}${redf}Warning II Style${reset}
EOF

