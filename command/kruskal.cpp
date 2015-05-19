#include "kruskal.h"
#include <algorithm>
#include <fstream>
using namespace std;
Kruskal::Kruskal(std::string _filename)
    :Delaunay(_filename)
{
    ansedge.clear();
    ans = 0;
}

void Kruskal::calc()
{
    Delaunay::calc();
    ans = 0;ansedge.clear();
    sort(edge.begin(), edge.end());
    uni.reset(node.size());
    for(size_t i=0;i<edge.size();i++)\
    {
        if(!uni.uni(edge[i].get_x(), edge[i].get_y())){
            ans+=edge[i].get_w();
            uni.merge(edge[i].get_x(), edge[i].get_y());
            ansedge.push_back(edge[i]);
        }
    }
}

void Kruskal::print(string _filename)
{
    ofstream fo(_filename.c_str());
    fo<<ans<<endl;
    for(size_t i=0;i<ansedge.size();i++){
        fo<<ansedge[i].get_x()<<" "<<ansedge[i].get_y()<<endl;
    }
}
