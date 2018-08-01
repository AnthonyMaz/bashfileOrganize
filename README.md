fileOrganize
============

## Setup
```
git clone git@github.com:AnthonyMaz/bashfileOrganize.git
cd bashfileOrganize
chmod +x fileorg.sh
```

## Running it
```
./fileorg.sh

#To run the script recursively run: 'for d in subdirectoryname[0-100]; do (cd "$d" && /DirectoryWhereTheScriptLives/fileorg.sh); done
#Note that subdirectorynames[0-100] is looking threw sub folders named sudirectoryname0,subdirectoryname1,...
#You must change the names accordingly to fit your subfolder names. 
#For more examples google http://lmgtfy.com/?q=bash+execute+command+in+every+subdirectory 

```

Features
--------

Organize by file type
* Image
* Video
* Audio
* Document
* Archive
* Audio Project Files
* Programming Language Files
* Database Files

