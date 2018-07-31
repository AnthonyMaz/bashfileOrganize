#!/bin/bash

### Most filetypes taken from https://fileinfo.com/browse/

### Txt/Docs File Types:
### .CSV,.DAT,.DOC,.DOCX,.GED,.KEY,.KEYCHAIN,.LOG,.MSG,.ODT,.PAGES,.PDF,.PLIST,.PPS,.PPT,.PPTX,.RTF,.SDF,.TEX,.TXT,.VCF,.WPD,.WPS,.XLS,.XLSX,.XML
TXTANDDOCS=$( (find . -iname '*.CSV' -o -iname '*.DAT' -o -iname '*.DOC' -o -iname '*.DOCX' -o -iname '*.GED' -o -iname '*.KEY' -o -iname '*.KEYCHAIN' -o -iname '*.LOG' -o -iname '*.MSG' -o -iname '*.ODT' -o -iname '*.PAGES' -o -iname '*.PDF' -o -iname '*.PLIST' -o -iname '*.PPS' -o -iname '*.PPT' -o -iname '*.PPTX' -o -iname '*.RTF' -o -iname '*.SDF' -o -iname '*.TEX' -o -iname '*.TXT' -o -iname '*.VCF' -o -iname '*.WPD' -o -iname '*.WPS' -o -iname '*.XLS' -o -iname '*.XLSX' -o -iname '*.XML' )> txtanddocs.txt )

### Image File Types:
### Adobe Photoshop - (.PSD),GIMP - (.XCF), Adobe Illustrator - (.AI), CorelDRAW - (.CDR) (.tif, .tiff),(.bmp),(.jpg, .jpeg),(.gif),(.png),(.eps),RAW Image Files (.raw, .cr2, .nef, .orf, .sr2, .svg)
IMAGES=$( (find . -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.gif' -o -iname '*.giff' -o -iname '*.tiff' -o -iname '*.tif' -o -iname '*.xfc' -o -iname '*.ai' -o -iname '*.cdr' -o -iname '*.eps' -o -iname '*.raw' -o -iname '*.cr2' -o -iname '*.nef' -o -iname '*.orf' -o -iname '*.sr2' -o -iname '*.svg')> images.txt )

### Audio File Types:
### .AIF,.flac,.IFF,.M3U,.M4A,.MID,.MP3,.MPA,.WAV,.WMA
AUDIO=$( (find . -iname '*.AIF' -o -iname '*.flac' -o -iname '*.IFF' -o -iname '*.M3U' -o -iname '*.M4A' -o -iname '*.MID' -o -iname '*.MP3' -o -iname '*.MPA' -o -iname '*.WAV' -o -iname '*.WMA'  )> audio.txt )

### Audio Project File Types:
### Audacity: .aup, Ardour: .ardour
AUDPROJ=$( (find . -iname '*.aup' -o -iname '*.ardour')> audproj.txt )

### Video File Types:
### .3G2,.3GP,.ASF,.AVI,.FLV,.M4V,.MOV,.MP4,.MPG,.RM,.SRT,.SWF,.VOB,.WMV
VIDEOS=$( (find . -iname '*.3G2' -o -iname '*.3GP' -o -iname '*.ASF' -o -iname '*.AVI' -o -iname '*.FLV' -o -iname '*.M4V' -o -iname '*.MOV' -o -iname '*.MP4' -o -iname '*.MPG' -o -iname '*.RM' -o -iname '*.SRT' -o -iname '*.SWF' -o -iname '*.VOB' -o -iname '*.WMV' )> videos.txt )

### Database File Types:
### .*sql*, .*db* 
DBFILES=$( (find . -iname '*.*sql*' -o -iname '*.*db*') > dbfiles.txt)

### Programming File Types:
### .c,.cc,.h,.java,.py,.sh,.pl,*.woff
PRGFILES=$( (find . -iname '*.c' -o -iname '*.cc' -o -iname '*.h' -o -iname '*.java' -o -iname '*.py' -o -iname '*.sh' -o -iname '*.pl' -o -iname '*.woff') > prgfiles.txt) 

### Compressed/pkg file types:
### .tar, .gz, .xz, .zip, .bz2, .cpio, .a, .ar, .deb, .rpm, 
CMPSDFILES=$( (find . -iname '*.tar' -o -iname '*.gz' -o -iname '*.xz' -o -iname '*.zip' -o -iname '*.bz2' -o -iname '*.cpio' -o -iname '*.a' -o -iname '*.ar' -o -iname '*.deb' -o -iname '*.rpm' ) > cmpsdfiles.txt )

$(mkdir txtanddocs)
 	while read LINE; do
		mv -v ${LINE} ./txtanddocs
	done < ./txtanddocs.txt

$(mkdir images)
	while read LINE; do
		mv -v ${LINE} ./images
	done < ./images.txt

$(mkdir audio)
	while read LINE; do
		mv -v ${LINE} ./audio
	done < ./audio.txt
$(mkdir audproj)
	while read LINE; do
		mv -v ${LINE} ./audproj
	done < ./audproj.txt
$(mkdir videos)
	while read LINE; do
		mv -v ${LINE} ./videos
	done < ./videos.txt
$(mkdir dbfiles)
	while read LINE; do
		mv -v ${LINE} ./dbfiles
	done < ./dbfiles.txt
$(mkdir prgfiles)	
	while read LINE; do
		mv -v ${LINE} ./prgfiles
	done < ./prgfiles.txt
$(mkdir cmpsdfiles)
	while read LINE; do
		mv -v ${LINE} ./cmpsdfiles
	done < ./cmpsdfiles.txt


$(rm -v images.txt txtanddocs.txt audio.txt audproj.txt videos.txt dbfiles.txt prgfiles.txt cmpsdfiles.txt) 

