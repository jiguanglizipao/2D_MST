#include <cstdio>
#include <iostream>
#include "kruskal.h"
using namespace std;
int main(int argc, char *argv[])
{
    if(argc == 1){
        cout<<"Required parameter missing. Please run again with input file.\nCommand: "<<argv[0]<<" inputfile [outfile]"<<endl;
        return 0;
    }
    string filename(argv[1]);
    Kruskal kruskal(filename);
    kruskal.calc();
    std::cout<<"Answer is "<<kruskal.get_ans()<<endl;
    if(argc > 2)kruskal.print(string(argv[2]));
    return 0;
}
