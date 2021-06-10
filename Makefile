Titanium.flac: Titanium.s
	nasm -f macho64 -o Titanium.o Titanium.s
	ld -o Titanium -static Titanium.o
	./Titanium > Titanium.raw || true
	ffmpeg -ac 2 -ar 44100 -f s16le -i Titanium.raw -compression_level 8 Titanium.flac
	metaflac --import-picture-from=Titanium.png --set-tag="Artist=Sandras" --set-tag="Title=Titanium" --set-tag="Date=2020" Titanium.flac

clean:
	rm -f Titanium Titanium.flac Titanium.raw Titanium.o
