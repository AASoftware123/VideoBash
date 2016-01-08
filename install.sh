#!/bin/bash
if [[ $UID != 0 ]]; then
	echo "This script requires root to run!"
	exit
fi
echo "Installing..."
dr=/tmp/$RANDOM$RANDOM$RANDOM
mkdir $dr
cd $dr
git clone https://github.com/AASoftware123/VideoBash.git
cd VideoBash
cp watchvideos /usr/bin/
echo "Installed VideoBash."
