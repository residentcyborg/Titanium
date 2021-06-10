Titanium.flac: Titanium.c
	cc -o Titanium Titanium.c
	./Titanium > Titanium.raw
	ffmpeg -ac 2 -ar 44100 -f s16le -i Titanium.raw -compression_level 8 Titanium.flac
	metaflac --import-picture-from=Titanium.png --set-tag="Artist=Sandras" --set-tag="Title=Titanium" --set-tag="Date=2020" Titanium.flac

clean:
	rm -f Titanium Titanium.flac Titanium.raw Titanium.o
