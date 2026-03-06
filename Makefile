bin_name:= main

build: $(wildcard src/*.s)
	as -no-trap $^ -o builds/all.o
	ld builds/all.o -o bin/$(bin_name)

build_debug:$(wildcard src/*.s)
	as -g $^ -o builds/all.o
	ld builds/all.o -o bin/$(bin_name)

clean:
	rm builds/*
	rm bin/*
