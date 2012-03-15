#
# Create an ISO from a vido_ts folder
# The video_ts folder must be INSIDE of the specified directory
#
function makedvd {
	DIR=$1
	NAME=$(basename "${DIR}")
	echo "hdiutil makehybrid -udf -udf-volume-name \"${NAME}\" -o \"${NAME}.iso\" \"${DIR}\""
	hdiutil makehybrid -udf -udf-volume-name "${NAME}" -o "${NAME}.iso" "${DIR}"
}


## Archives
# Extract about anything
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xvjf $1 ;;
            *.tar.gz)  tar xvzf $1 ;;
            *.bz2)     bunzip2 $1 ;;
            *.rar)     unrar x $1 ;;
            *.gz)      gunzip $1 ;;
            *.tar)     tar xvf $1 ;;
            *.tbz2)    tar xvjf $1 ;;
            *.tgz)     tar xvzf $1 ;;
            *.zip)     unzip $1 ;;
            *.Z)       uncompress $1 ;;
            *.7z)      7z x $1 ;;
            *)         echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
alias decompress="extract"

#
# inspired by http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x279.html
# but I made it a single awk instead of an awk, forloop and a bc
# asumes we have awk available. but really, who doesnt have awk?
# let's get the size of the files in this dir
#
function lsbytes {
    echo -n $(ls -l | awk '/^-/{total += $5} END{printf "%.2f", total/1048576}')
}






