#!/bin/sh
rm -f Titanium.flac
nasm  -f macho64 -o Titanium.o Titanium.s
ld -o Titanium -static Titanium.o
./Titanium > Titanium.raw
ffmpeg  -ac 2 -ar 44100 -f s16le -i Titanium.raw -compression_level 8 Titanium.flac
metaflac --import-picture-from=Titanium.png --set-tag="Artist=Sandras" --set-tag="Title=Titanium" --set-tag="Date=2020" Titanium.flac
rm -f Titanium Titanium.raw Titanium.o
