:: Create a blank powerpoint file
@echo off
type nul > %1.txt
move %1.txt %1.pptx
start powerpnt.exe /b %1.pptx 
