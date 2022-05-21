::create a .docx file right from the terminal
::*You need to download pandoc to make it work*
::link: https://github.com/jgm/pandoc/blob/master/INSTALL.md

::syntax
::doc name
::no need to specify the .docx command

::I named the command "doc" instead of docx for ease of typing. You can really call/rename it whatever you like

@echo off
echo "Hello!" | pandoc -o %1.docx
