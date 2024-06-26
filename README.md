# Working with PST files in Linux

I recently started working with PST files in linux - building a searchable mailbox archive from old PST files backed up from various mailboxes.
In this project you will find scripts which i've used to help speed up some of the tasks needed to convert the PST files into easy use data.

## Getting Started

First of all, you will need to install the following:

`libpst4;xxxxx - xxxxx will be i386 or amd64` 
`pst-utils`
`readpst`

On debian systems they can be installed like so:

`sudo apt install pst-utils`

## to_eml.sh

This cycles through all your .pst files, and will convert each email to a .eml file in it's respective directory.
You may end up with a structure like this:

`export/Archive/Inbox/*.eml`  
`export/Archive/Folder 1/*.eml`  
`export/Archive/Sent Items/*.eml`  
`export/Archive/Deleted Items/*.eml`  

Use the script as following:

1. Put it in the directory with your PST files
2. bash to_eml.sh
3. let it run

## md5_rename.sh

This script renames your eml files in all the various directories to have a unique name by renaming it to it's md5 hash value.
when it finds an eml file, it does md5sum on the file, then renames the file to hash.eml

This will be useful later when we want to de-duplicate any emails before we add them into a database.

## find_dupes.sh

This script will show the duplicate files.

## Author Notes
If you have any suggestions, improvements or any kind of questions about the scripts, please feel free to reach out to me here.
I will be adding more scripts as I build them.
