titanium.wav: titanium.c
	cc -o titanium titanium.c
	./titanium > titanium.raw
	ffmpeg -ac 2 -ar 44100 -f s16le -i titanium.raw -compression_level 8 titanium.wav

clean:
	rm -f titanium titanium.raw titanium.o titanium.wav
