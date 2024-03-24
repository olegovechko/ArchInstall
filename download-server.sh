#!/bin/bash
#https://drive.google.com/file/d/11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy/view?usp=drive_link
fileid="11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy"
filename="LinuxServer.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}