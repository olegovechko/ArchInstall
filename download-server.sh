#!/bin/bash
xpg-open 'https://drive.google.com/file/d/11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy/view?usp=drive_link'

#!/bin/bash

# Get files from Google Drive

# $1 = file ID
# $2 = file name
# ggID='11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy'  
# fileNmae='LinuxServer.zip' 

# URL="https://docs.google.com/uc?export=download&id=${ggID}"

# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate $URL -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=${ggID}" -O ${filename} && rm -rf /tmp/cookies.txt

# ggID='11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy'  
# ggURL='https://drive.google.com/uc?export=download'  
# filename="$(curl -sc /tmp/gcokie "${ggURL}&id=${ggID}" | grep -o '="uc-name.*</span>' | sed 's/.*">//;s/<.a> .*//')"  
# getcode="$(awk '/_warning_/ {print $NF}' /tmp/gcokie)"  
# curl -Lb /tmp/gcokie "${ggURL}&confirm=${getcode}&id=${ggID}" -o "${filename}"  