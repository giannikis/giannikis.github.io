#!/bin/bash


for f in *.ogg;
do
  fname="${f%.*}"
  echo $fname
  
  rm ${fname}.mp3 ${fname}.aac
  ffmpeg -i ${f} -acodec mp3 -q:a 8 ${fname}.mp3
  ffmpeg -i ${f} -acodec aac -b:a 32k  ${fname}.aac
done



