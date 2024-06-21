@echo off

REM This is for converting videos to a compatible format and be viewable on a soft-modded PS2 with the application called SMS (Simple Media System)
REM Based on https://www.reddit.com/r/crtgaming/comments/sn6uht/comment/hw1azno/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button 
REM And https://www.reddit.com/r/ps2/comments/lktv2a/sms_ffmpeg_settings/

echo "Converting videos to SMS supported format for the PS2..."
echo "Passed %1"
REM Check if a parameter is passed
if "%1"=="" (
    REM No parameter passed, find all video files and convert them
    for %%f in (*.mp4 *.mov *.mkv *.avi *.flv *.wmv *.m4v) do (
        mkdir "./PS2SMS"
        echo Converting %%f to %%~nf.avi
        ffmpeg -i "%%f" -map 0:v:0 -map 0:a:0 -c:v mpeg4 -vtag xvid -b:v 3000k -vf scale=880:-1 -ac 2 -c:a libmp3lame -b:a 224k -af "aresample=matrix_encoding=dplii" ".\PS2SMS\%%~nf.avi"
    )
) else (
    REM Parameter passed, convert the specified file
    ffmpeg -i "%1" -map 0:v:0 -map 0:a:0 -c:v mpeg4 -vtag xvid -b:v 3000k -vf scale=880:-1 -ac 2 -c:a libmp3lame -b:a 224k -af "aresample=matrix_encoding=dplii" output.avi
)
