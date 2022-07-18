#!/bin/bash



if [[ $# != 2 ]]
then
  echo "backup.sh target_directory_name destination_directory_name"
  exit
fi


if [[ ! -d $1 ]] || [[ ! -d $2 ]]
then
  echo "Invalid directory path provided"
  exit
fi




targetDirectory=$1
destinationDirectory=$2




echo "Targeted Dir is : $targetDirectory"
echo "Destination Dir is : $destinationDirectory"



currentTS=`date "+%s"`
d=`date '+%A,%d-%B,%Y,%T'`
 # echo "$currentTS"


# echo  "$d" 





backupFileName="backup-[$currentTS].tar.gz"








cd $destinationDirectory # <-
destDirAbsPath=`pwd`



cd $targetDirectory



yesterdayTS=$(($currentTS - 24 * 60 * 60))
# echo "$yesterdayTS"

declare -a toBackup


for file in $(ls) 
do
  
  if ((`date -r $file +%s` > $yesterdayTS))
  then
    toBackup+=($file)
  fi
done

tar -czvf $backupFileName ${toBackup[@]}





mv $backupFileName $destDirAbsPath







cd $destDirAbsPath
mkdir "$d"



cd $destDirAbsPath/$d
finaldirPath=`pwd`
# echo $finaldirPath

cd $destDirAbsPath
mv $backupFileName $finaldirPath



touch backup.txt 
echo "Targeted Dir is : $targetDirectory" >>  backup.txt
echo "Destination Dir is : $destinationDirectory" >>  backup.txt
echo "BackUpCreated at: $d" >>  backup.txt

mv  backup.txt $finaldirPath






