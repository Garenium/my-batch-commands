@echo off
ffmpeg -i %1 -i %2 -c:v copy -c:a aac %3 

