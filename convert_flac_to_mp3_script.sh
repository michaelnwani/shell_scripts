#!/bin/bash

for i in *.flac
do
    songtitle=${i%*flac}
    ffmpeg -i "`echo ${i}`" "`echo ${songtitle}mp3`"
done

rm *.flac