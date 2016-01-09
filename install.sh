#!/bin/bash
if [[ $UID != 0 ]]; then
	echo "This script requires root to run!"
	exit
fi
echo "Installing..."
dr=/tmp/$RANDOM$RANDOM$RANDOM
mkdir $dr
cd $dr
wget https://raw.githubusercontent.com/AASoftware123/VideoBash/master/watchvideos -O watchvideos
chmod +x watchvideos
cp watchvideos /usr/bin/
if [[ ! `which mplayer` ]]; then
	echo "Please install the command 'mplayer' in order to use this tool!"
fi
if [[ ! `which youtube-dl` ]]; then
	echo "Please install the command 'youtube-dl' in order to use this tool!"
fi
echo "Installed VideoBash."
