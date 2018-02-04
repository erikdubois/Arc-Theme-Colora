#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#####################################################################"
echo "#####################################################################"
echo "All colours in the folder arc-theme/common are still the original blue ones from github!"
echo "Choose your colour that will replace the blue colour. Look for the right colour online"
echo "or look for a colour with tools like gpick."
echo "Changing ....."
echo "Wait for it ...."
echo "It will show you all the fixes ..."
echo "#####################################################################"
echo "#####################################################################"

count=0

#########################################################
################ CHANGE ONLY THIS CODE ##################
#########################################################
# test colour for script is #DC143C
newcolour1=DC143C
#########################################################
############ NO HASHTAG BEFORE COLOUR CODE ##############
#########################################################


# change all rgb colours

rgbfunction () {
  foldcolour1=$1
  fnewcolour1=$2
  find arc-theme/common -type f -exec sed -i 's/'$foldcolour1'/'$fnewcolour1'/g' {}  \;
  echo "The rgb colour "$foldcolour1 "is changed into " $fnewcolour1
}

count=$[count+1]
echo "Fix " $count
echo "Making sure all colour codes have capital letters"
echo "The very common colour #5294e2 is changed into capital letters."
rgbfunction "5294e2" "5294E2"

count=$[count+1]
echo "Fix " $count
echo "The very common colour #5294E2 is changed into the newcolour1."
rgbfunction "5294E2" $newcolour1

count=$[count+1]
echo "Fix " $count
echo "The colour #4a85cb is changed into the newcolour1."
rgbfunction "4a85cb" $newcolour1

count=$[count+1]
echo "Fix " $count
echo "The colour #4DADD4 is changed into the newcolour1."
rgbfunction "4DADD4" $newcolour1

count=$[count+1]
echo "Fix " $count
echo "The colour #76c0de is changed into the newcolour1."
rgbfunction "76c0de" $newcolour1

count=$[count+1]
echo "Fix " $count
echo "The colour #2e96c0 is changed into the newcolour1."
rgbfunction "2e96c0" $newcolour1

count=$[count+1]
echo "Fix " $count
echo "The colour #2679db is changed into the newcolour1."
rgbfunction "2679db" $newcolour1



echo "#####################################################################"
echo "#####################################################################"


rgbafunction () {
  foldcolour1=$1
  fnewcolour1=$2
  redhex=${fnewcolour1:0:2}
  greenhex=${fnewcolour1:2:2}
  bluehex=${fnewcolour1:4:2}

  reddec=$((16#$redhex))
  greendec=$((16#$greenhex))
  bluedec=$((16#$bluehex))

  rgbacolour="$reddec, $greendec, $bluedec"

  #old rgba colour of background rubberband

  fnewcolour1=$rgbacolour

  find arc-theme/common -type f -exec sed -i "s/$foldcolour1/$fnewcolour1/g" {}  \;

  echo "The rgba colour "$foldcolour1 "is changed into " $fnewcolour1

}
count=$[count+1]
echo "Fix " $count
rgbafunction "38, 121, 219" $newcolour1

count=$[count+1]
echo "Fix " $count
rgbafunction "82, 148, 226" $newcolour1

count=$[count+1]
echo "Fix " $count
rgbafunction "65, 137, 223" $newcolour1


echo "#####################################################################"
echo "#####################################################################"
echo "All css files but also svg files have been changed now to your colour code."
echo "BUT PNG'S will not be altered with this script."
echo "So we will need to make new png's later on."
echo
echo "Next up delete all assets i.e. png's with next script."
