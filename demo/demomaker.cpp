#include <cstdio>
#include <ctime>
#include <cstdlib>
const int n=100000;
const int m=1000;
const char filename[] = "test100000.map";
bool map[m][m];
int main(){
	srand(time(NULL));
	freopen(filename, "w", stdout);
	printf("%d\n\n", n);
	for(int i=0, x, y;i<n;i++){
		for(x=rand()%m,y=rand()%m;map[x][y];x=rand()%m,y=rand()%m);
		map[x][y]=true;
		printf("%d %d\n", x, y);
	}
}
