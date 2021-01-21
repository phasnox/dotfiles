#!/bin/sh

if [ -z "$1" ]
then
    echo "Please pass the target external home dir e.g.: /run/media/phasnox/FDCC-44A6/backups-linux/phasnox/";
    exit 1;
fi

echo ""
echo "----------------"
echo "Backing up home to $1.."
echo "----------------"
echo ""
rsync -au --progress ~/src/ $1/src/
rsync -au --progress ~/Documents/ $1/Documents/
rsync -au --progress ~/Music/ $1/Music/
rsync -au --progress ~/Pictures/ $1/Pictures/
rsync -au --progress ~/Videos/ $1/Videos/
rsync -au --progress ~/Comics/ $1/Comics/
rsync -au --progress ~/games/ $1/games/


echo ""
echo "----------------"
echo "Restoring from $1.."
echo "----------------"
echo ""
rsync -au --progress $1/src/ ~/src/ 
rsync -au --progress $1/Documents/ ~/Documents/ 
rsync -au --progress $1/Music/ ~/Music/ 
rsync -au --progress $1/Pictures/ ~/Pictures/ 
rsync -au --progress $1/Videos/ ~/Videos/ 
rsync -au --progress $1/Comics/ ~/Comics/ 
rsync -au --progress $1/games/ ~/games/ 
