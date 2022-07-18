
A Bash-Script backup.sh which automatically backs up any of files that have been updated/modified within the past 24 hours.




- HOW IT WORKS?

      1- Script access the targeted dir  (provided by user as an argument).
      2- Check if files in the targeted dir were updated/modified within the past 24 hours.
      3- Files That been Updated/modified within the past 24 hours will be archived and zipped ( tar.zg ) together.
      4- Files That been Updated/modified within the past 24 hours will be moved to a Destination dir ( proveded by user as an argument).
      5- Each backup is saved in a solo dir created with a backup.txt (Contains all info about the created Backup).



- HOW TO USE?

      First clone Repo to your local machine


      Open The Termial and Run the Below Commands:


      1- Change the current working directory where the bachup.sh file script is located.

            $ cd   #AbsoultePath for backup.sh
            
            
            
            
Notes Before continue  

- #$1 Argument passed to the below command is the AbsoultePath for the Targeted Dir (A Targeted dir is Where the Script will sreach for the Modifed Files).
 
- #$2 Argument passed to the below command is the AbsoultePath for the distation Dir (A destination dir is Where the Script will save the created backup tar.zg file).


      2- Run Script backup.sh with desired arguments 
           

            $ ./backup.sh   #$1   #$2 

