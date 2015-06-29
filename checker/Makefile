checker : main.o delaunay.o kruskal.o unionfind.o png.o lodepng.o
	g++ main.o delaunay.o kruskal.o unionfind.o png.o lodepng.o -o checker
main.o : main.cpp kruskal.h
	g++ main.cpp -c
delaunay.o : delaunay.cpp delaunay.h
	g++ delaunay.cpp -c -I include
kruskal.o : kruskal.h delaunay.h kruskal.cpp unionfind.h png.h
	g++ kruskal.cpp -c
unionfind.o : unionfind.cpp unionfind.h
	g++ unionfind.cpp -c
png.o : png.cpp png.h lodepng.h
	g++ png.cpp -c
lodepng.o : lodepng.cpp lodepng.h
	g++ lodepng.cpp -c
clean :
	rm *.o checker -f
