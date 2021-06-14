titanium.flac: titanium.c
	cc -o titanium titanium.c
	./titanium > titanium.raw
	ffmpeg -ac 2 -ar 44100 -f s16le -i titanium.raw -compression_level 8 titanium.flac
	metaflac --import-picture-from=titanium.png --set-tag="Artist=Sandras" --set-tag="Title=Titanium" --set-tag="Date=2020" titanium.flac

clean:
	rm -f titanium titanium.flac titanium.raw titanium.o
