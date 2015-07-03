checker : main.o delaunay.o kruskal.o unionfind.o png.o lodepng.o
	g++ main.o delaunay.o kruskal.o unionfind.o png.o lodepng.o -o checker -O2
main.o : main.cpp kruskal.h
	g++ main.cpp -c -O2
delaunay.o : delaunay.cpp delaunay.h
	g++ delaunay.cpp -c -O2
kruskal.o : kruskal.h delaunay.h kruskal.cpp unionfind.h png.h
	g++ kruskal.cpp -c -O2
unionfind.o : unionfind.cpp unionfind.h
	g++ unionfind.cpp -c -O2
png.o : png.cpp png.h lodepng.h
	g++ png.cpp -c -O2
lodepng.o : lodepng.cpp lodepng.h
	g++ lodepng.cpp -c -O2
clean :
	rm *.o checker -f
