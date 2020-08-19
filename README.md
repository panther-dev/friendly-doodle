Welcome

This document is the quick guide of the script. You can modify it, do whatever you want with it.

Simple bash script to extract .ass subtitles from mkv file and converting them to .srt 
Why? Plex transcodes video to display subtitles. But can play external subs with no problem.
This script use mkvextract to extract .ass files and FFmpeg to convert the ass subs into srt.
mkvextract mkvinfo https://mkvtoolnix.download/downloads.html
FFmpeg https://www.ffmpeg.org/

How to use it?

Enter file name (Script will open it with mkvinfo, find the track to extract i.e. subtitles)
Enter track number
Done 

What it does

You| Run the script.
You| Enter track number
Script| Extracts the ass subtitles
Script| Coverts ass subs into srt
Script| Merges srt with the orignal files and removes the ass subs and extra elements
Script| Swap the orignal file with New File and renames original file with .bak extension

You can modify however it fits you.
