#!/bin/bash

### Most filetypes taken from https://fileinfo.com/browse/

### Txt/Docs File Types:
### .CSV,.DAT,.DOC,.DOCX,.GED,.KEY,.KEYCHAIN,.LOG,.MSG,.ODT,.PAGES,.PDF,.PLIST,.PPS,.PPT,.PPTX,.RTF,.SDF,.TEX,.TXT,.VCF,.WPD,.WPS,.XLS,.XLSX,.XML,.F,.TTF,.ICS,.MDL,.ODS,.SNT,.LIT
TXTANDDOCS=$( (find . -iname '*.CSV' -o -iname '*.DAT' -o -iname '*.DOC' -o -iname '*.DOCX' -o -iname '*.GED' -o -iname '*.KEY' -o -iname '*.KEYCHAIN' -o -iname '*.LOG' -o -iname '*.MSG' -o -iname '*.ODT' -o -iname '*.PAGES' -o -iname '*.PDF' -o -iname '*.PLIST' -o -iname '*.PPS' -o -iname '*.PPT' -o -iname '*.PPTX' -o -iname '*.RTF' -o -iname '*.SDF' -o -iname '*.TEX' -o -iname '*.TXT' -o -iname '*.VCF' -o -iname '*.WPD' -o -iname '*.WPS' -o -iname '*.XLS' -o -iname '*.XLSX' -o -iname '*.XML' -o -iname '*.F' -o -iname '*.TTF' -o -iname '*.ICS' -o -iname '*.mdl' -o -iname '*.ODS' -o -iname '*.SNT' -o -iname '*.LIT')> txtanddocs.txt )

### Image File Types:
### Adobe Photoshop - (.PSD),GIMP - (.XCF), Adobe Illustrator - (.AI), CorelDRAW - (.CDR) (.tif, .tiff),(.bmp),(.jpg, .jpeg),(.gif),(.png),(.eps),RAW Image Files (.raw, .cr2, .nef, .orf, .sr2, .svg), .ico, .psd,### .fits, .jp*, .emf, .ds, .xmp
IMAGES=$( (find . -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' -o -iname '*.gif' -o -iname '*.giff' -o -iname '*.tiff' -o -iname '*.tif' -o -iname '*.xfc' -o -iname '*.ai' -o -iname '*.cdr' -o -iname '*.eps' -o -iname '*.raw' -o -iname '*.cr2' -o -iname '*.nef' -o -iname '*.orf' -o -iname '*.sr2' -o -iname '*.svg' -o -iname '*.bmp' -o -iname '*.ico' -o -iname '*.psd' -o -iname '*.fits' -o -iname '*.jp*' -o -iname '*.emf' -o -iname '*.ds' -o -iname '*.xmp')> images.txt )

### Audio File Types:
### .AIF,.flac,.IFF,.M3U,.M4A,.MID,.MP3,.MPA,.WAV,.WMA,.ogg,.amr,.wpl,.m3u,.tsp,.acm
AUDIO=$( (find . -iname '*.AIF' -o -iname '*.flac' -o -iname '*.IFF' -o -iname '*.M3U' -o -iname '*.M4A' -o -iname '*.MID' -o -iname '*.MP3' -o -iname '*.MPA' -o -iname '*.WAV' -o -iname '*.WMA' -o -iname '*.ogg' -o -iname '*.amr' -o -iname '*.wpl' -o -iname '*.m3u' -o -iname '*.tsp' -o -iname '*.acm')> audio.txt )

### Audio Project File Types:
### Audacity: .aup, Ardour: .ardour, .mbox, .cpr
AUDPROJ=$( (find . -iname '*.aup' -o -iname '*.ardour' -o -iname '*.mbox' -o -iname '*.cpr')> audproj.txt )

### Video File Types:
### .3G2,.3GP,.ASF,.AVI,.FLV,.M4V,.MOV,.MP4,.MPG,.RM,.SRT,.SWF,.VOB,.WMV,.WEBM,.M2TS,.WMF
VIDEOS=$( (find . -iname '*.3G2' -o -iname '*.3GP' -o -iname '*.ASF' -o -iname '*.AVI' -o -iname '*.FLV' -o -iname '*.M4V' -o -iname '*.MOV' -o -iname '*.MP4' -o -iname '*.MPG' -o -iname '*.RM' -o -iname '*.SRT' -o -iname '*.SWF' -o -iname '*.VOB' -o -iname '*.WMV' -o -iname '*.WEBM' -o -iname '*.M2TS' -o -iname '*.WMF')> videos.txt )

### Database/Links/libraries File Types:
### .*sql*, .*db*, .dll, .lnk, .myi, .lib, .tlb, .ocx 
DBFILES=$( (find . -iname '*.*sql*' -o -iname '*.*db*' -o -iname '*.dll' -o -iname '*.lnk' -o -iname '*.myi' -o -iname '*.lib' -o -iname '*.tlb' -o -iname '*.ocx') > dbfiles.txt)

### Programming/Binary/fs File Types:
### .c, .cc, .h, .java, .py, .sh, .pl, .woff, .html, .bat, .elf, .ini, .pyc, .ps, .jar, .jsp, .icc, .asp, .mat, .xpi, .class, .mui, .reg, .chm, .sys, .hdf, .json, .swc, .vdm, .xfs, .cps, .com, .cpl, .rll, .drv 
PRGFILES=$( (find . -iname '*.c' -o -iname '*.cc' -o -iname '*.h' -o -iname '*.java' -o -iname '*.py' -o -iname '*.sh' -o -iname '*.pl' -o -iname '*.woff' -o -iname '*.html' -o -iname '*.bat' -o -iname '*.elf' -o -iname '*.ini' -o -iname '*.pyc' -o -iname '*.ps' -o -iname '*.jar' -o -iname '*.jsp' -o -iname '*.icc' -o -iname '*.asp' -o -iname '*.mat' -o -iname '*.xpi' -o -iname '*.class' -o -iname '*.mui' -o -iname '*.reg' -o -iname '*.chm' -o -iname '*.sys' -o -iname '*.hdf' -o -iname '*.json' -o -iname '*.swc' -o -iname '*.vdm' -o -iname '*.xfs' -o -iname '*.cps' -o -iname '*.com' -o -iname '*.cpl' -o -iname '*.rll' -o -iname '*.drv') > prgfiles.txt) 

### Compressed/pkg file types:
### .tar, .gz, .xz, .zip, .bz2, .cpio, .a, .ar, .deb, .rpm, .exe, .7z, .iso, .tz, .cab, .torrent, .rar, .ax 
CMPSDFILES=$( (find . -iname '*.tar' -o -iname '*.gz' -o -iname '*.xz' -o -iname '*.zip' -o -iname '*.bz2' -o -iname '*.cpio' -o -iname '*.a' -o -iname '*.ar' -o -iname '*.deb' -o -iname '*.rpm' -o -iname '*.exe' -o -iname '*.7z' -o -iname '*.iso' -o -iname '*.tz' -o -iname '*.cab' -o -iname '*.torrent' -o -iname '*.rar' -o -iname '*.ax') > cmpsdfiles.txt )

### Files without extensions
### Anything without *.*
FWOEXT=$( (find . -type f ! -name "*.*") > fwoext.txt )

### Straggler files. Anything else left
### in my case it's any files left in the recovered directories.
STRAGS=$( (find ./recup* -type f -iname "*.*") > strags.txt)

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
$(mkdir fileswithoutExt)
	while read LINE; do
		mv -v ${LINE} ./fileswithoutExt
	done < ./fwoext.txt
$(mkdir remainingFiles)
	while read LINE; do
		mv -v ${LINE} ./remainingFiles
	done < ./strags.txt


$(rm -v images.txt txtanddocs.txt audio.txt audproj.txt videos.txt dbfiles.txt prgfiles.txt cmpsdfiles.txt fwoext.txt strags.txt) 

