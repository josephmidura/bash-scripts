#!/bin/bash
#
# Silly little script to determine the # of blank lines in an ASCII text file.
# I wrote this since I'm always having to re-figure the commands to determine 
# how much padding is in various source/script files.
#

####################################################################
#   Made this to separate function just for sake of neatness.
####################################################################
function Cute_Progress_Bar()
{
	(( CURR_LINE++ ))

	if [ ${CURR_LINE} -ge ${TEN_PERCENT} ] ; then
		(( PERCENT_DONE+=10 ))
		INDICATOR="${INDICATOR}\b====>"
		echo -n -e "     ........................................     (${PERCENT_DONE}%)\r"
		echo -n -e "     ${INDICATOR}\r"

		let CURR_LINE=0
	fi
}

function Twirly_Thing()
{
	case ${TWIRLY} in
		"\\" )
			TWIRLY="|"
			;;

		"|" )
			TWIRLY="/"
			;;

		"/" )
			TWIRLY="-"
			;;

		"-" )
			TWIRLY="\\"
			;;

		*)
		TWIRLY="-"
		;;
	esac

	echo -n -e "\b"
	echo -n "${TWIRLY}"
}


####################################################################
#############    main()  execution starts here... 
####################################################################
#echo " args ${@}"
#echo " argcount ${#} "

ARG_COUNT=${#}
MASTER_ARGONE=${1}

# Verify the arguments passed to our little script.
if [ "${ARG_COUNT}" -lt 1 ] ; then
	echo " You need to specify a FILE for me to scan there bub..."
	echo "      ${0}   /somedir/somefile   <-- better be a TEXT file! "
	exit 0
fi

# Check to see if they gave us a valid dir/filename.
if [ ! -e "${MASTER_ARGONE}" ] ; then
	echo " That file: ${MASTER_ARGONE} doesn't seem to exist."
	exit 0
fi

# Check to see if the file is ZERO size.
if [ ! -s "${MASTER_ARGONE}" ] ; then
	echo " That file: ${MASTER_ARGONE} is ZERO length."
	exit 0
fi

# Ensure we have READ permissions on the specified file.
if [ ! -r "${MASTER_ARGONE}" ] ; then
	echo " That file: ${MASTER_ARGONE} isn't readable."
	exit 0
fi

# Check to see that the file is actually ASCII text, so we can sanely parse it.
RES=$( file -L "${MASTER_ARGONE}" | grep -c "text" )
if [ "${RES}" -eq 0 ] ; then
	echo " That file: ${MASTER_ARGONE} isn't a text file bub."
	exit 0
fi

# Because Daniella asked for it....
RES=$( file "${MASTER_ARGONE}" | grep -c "shell script text executable" )
if [ ${RES} -ne 0 ] ; then
	DO_SCRIPT_COMMENT_COUNT="true"
else
	DO_SCRIPT_COMMENT_COUNT="false"
fi

echo
echo "  Analyzing file: ${MASTER_ARGONE}"
echo -n "   ( "
RES=$(file "${MASTER_ARGONE}" | awk -F ":" '{ print $2 }')
echo "${RES} )"
echo


# Loop through the lines in the file, checking for empty lines.
# Just add them up as we go.
MASTER_COUNT=0
INDICATOR=">"
RES=0
PERCENT_DONE=0
CURR_LINE=0
SCRIPT_COMMENTS=0

TOTAL_LINES=$( wc -l "${MASTER_ARGONE}" | awk '{ print $1 }' )

(( TEN_PERCENT=TOTAL_LINES/10 ))

echo -n -e "     ........................................     (${PERCENT_DONE}%)\r"

while read GOOFILE
do
	RES=$(echo "${GOOFILE}" | grep -c [A-Za-z0-9,#@$%^*{}] )
	(( MASTER_COUNT+=RES ))

	if [ "${DO_SCRIPT_COMMENT_COUNT}" == "true" ] ; then

		# Check to see if we actually HAVE a potential script comment line.
		RES=$( echo "${GOOFILE}" | grep -c "#" )
		if [ ${RES} -ne 0 ] ; then
			RES=$( echo "${GOOFILE}" | awk -F "#" '{ print $1 }' )
			if [ "${RES}" == "" ] ; then
				(( SCRIPT_COMMENTS++ ))
			fi
		fi
	fi


	# Just some cutesy "progress bar" stuff to show that the script isn't hung.
	Cute_Progress_Bar

	Twirly_Thing

done < "${MASTER_ARGONE}"

echo -n -e "     =======================================>    (100%)\r"

(( BLANK_LINES=TOTAL_LINES-MASTER_COUNT ))

echo 
echo
echo "          File parsed: ${MASTER_ARGONE}"
echo "          Total lines: ${TOTAL_LINES}"
echo "      Non-blank lines: ${MASTER_COUNT}"
echo "          Blank lines: ${BLANK_LINES}"
if [ "${DO_SCRIPT_COMMENT_COUNT}" == "true" ] ; then
	echo " Script Comment lines: ${SCRIPT_COMMENTS}"
fi
echo
