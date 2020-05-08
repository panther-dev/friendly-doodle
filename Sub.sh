#!/bin/bash
echo "Enter file name:"
read ifile
mkvinfo "$ifile"
echo "Extension:"
read ext
echo "Track no:"
read track
for i in *.mkv ; do 
echo "${i%.*}";
mkvextract "$i" tracks "$track":"${i%.*}"."$ext"
ffmpeg -i "${i%.*}".ass -codec:s text "${i%.*}".srt
done
