#!/bin/bash
#https://drive.google.com/file/d/11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy/view?usp=drive_link
fileid="11kyzmcBYfyVFVYmedeUACvEms3Nd_mcy"
filename="LinuxServer.zip"
html=`curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}"`
curl -Lb ./cookie "https://drive.google.com/uc?export=download&`echo ${html}|grep -Po '(confirm=[a-zA-Z0-9\-_]+)'`&id=${fileid}" -o ${filename}