#!/bin/bash
echo "This will Ex ASS con to SRT inject back into mkv rm extra "
echo "Enter Mkv extract Track no for subtitles:"
read track
for file in *.mkv ; do 
# every file 
echo "${file%.*}";
mkvextract "$file" tracks "$track":"${file%.*}".ass
ffmpeg -i "${file%.*}".ass -codec:s text "${file%.*}".srt
mkvmerge -o "${file%.*}".out -M -S "$file" --default-track 0 --language 0:eng "${file%.*}".srt 
mv "$file" "${file%.*}".bak
mv "${file%.*}".out "$file"
done
