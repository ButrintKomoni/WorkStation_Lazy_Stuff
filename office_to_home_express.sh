#!/bin/bash
#transfer files from office to home

echo "YOYOYO, TODAY U DID A GREAT JOB MOFO!"
echo "DON'T FORGET TO TRANSFER YOUR SHIT!"

echo -n "Do you wanna transfer your files y/n? "
read inputShit

if(($inputShit == 'y'))
then

echo -n "Write the workspace that you were working on : " 
read dirInput
echo ""
echo ""
find ${dirInput} -maxdepth 1 -mtime -24 -type f -exec ls -l {} \;

echo -n "Are these the files you wanna transfer y/n? "
read sureInput

if(($sureInput == 'y'))
then
ACID = 192.168.0.43
BITCHEZ = 192.168.0.15
PRISHTINA = 192.168.0.124
echo ""
echo "1. " $ACID
echo "2. " $BITCHEZ
echo "3. " $PRISHTINA
echo -n "Which machine do you wanna transfer them : "
read machineInput

if(($machineInput == 1))
then
$(unison ${dirInput} ssh://192.168.0.43)

elif(($machineInput == 2))
then
$(unison ${dirInput} ssh://192.168.0.15)
elif(($machineInput == 3))
then
$(unison ${dirInput} ssh://192.168.0.124)
elif(($sureInput == 'n'))
then

	echo "Okay! I guess you haven't slept that much!"

elif(($inputShit == 'n'))
then
	echo "Bye!"

else
	echo "idk bruv whatchu sayin?!"
fi
fi
fi
