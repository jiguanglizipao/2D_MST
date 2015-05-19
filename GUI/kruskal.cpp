#include "kruskal.h"
#include <algorithm>
using namespace std;
Kruskal::Kruskal(QString _filename)
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
