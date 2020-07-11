!/bin/bash

if ! test -d ~/Screenshots
then
  mkdir ~/Screenshots
fi

if ! command -v scrot &> /dev/null

then

    echo "scrot not installed or missing from \$PATH. Cannot continue."
    echo "Stop."

    exit 1

fi

if [ "$1" == "instant" ] || [ "$1" == "i" ]
then
  scrot ~/Screenshots/`date +%s`.png

elif [ "$1" == "gimp" ] || [ "$1" == "g" ]
  then
    if ! command -v gimp &> /dev/null

    then

        echo "gimp not installed or missing from \$PATH. Cannot continue."
        echo "Stop."

        exit 1

    fi

  scrot ~/Screenshots/`date +%s`.png
  gimp ~/Screenshots/`date +%s`.png
  rm -f ~/Screenshots/`date +%s`.png

elif [ "$1" == "delay" ] || [ "$1" == "d" ]
then
  scrot ~/Screenshots/`date +%s`.png --delay "$2"
else
    echo "[i]nstant: Take a screenshot"
    echo "[g]IMP: Open in the GIMP"
    echo "[d]elay: Delay $2 seconds"

    echo ""
    
    echo "Exit status 0: Finshed"
    echo "Exit status 1: Missing dependences"


fi
