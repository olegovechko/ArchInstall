#!/bin/bash
#https://drive.google.com/file/d/11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy/view?usp=drive_link
ggID='11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy'  
ggURL='https://drive.google.com/uc?export=download'  
filename="$(curl -sc /tmp/gcokie "${ggURL}&id=${ggID}" | grep -o '="uc-name.*</span>' | sed 's/.*">//;s/<.a> .*//')"  
getcode="$(awk '/_warning_/ {print $NF}' /tmp/gcokie)"  
curl -Lb /tmp/gcokie "${ggURL}&confirm=${getcode}&id=${ggID}" -o "${filename}"  