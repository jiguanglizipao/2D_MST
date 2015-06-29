#include "kruskal.h"
#include "png.h"
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
	for(size_t i=0;i<edge.size();i++)
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
	if(node.size()>=1000)return;
	for(size_t i=0;i<node.size();i++)node[i].reverse_y();
	const int circle_r = 10, line_r = 5, dis = 20;
	if(node.empty())return;
	double ma_x=node[0].get_x(), mi_x=node[0].get_x(), ma_y=node[0].get_y(), mi_y=node[0].get_y();
	for(size_t i=0;i<node.size();i++){
		ma_x=max(ma_x, node[i].get_x());
		mi_x=min(mi_x, node[i].get_x());
		ma_y=max(ma_y, node[i].get_y());
		mi_y=min(mi_y, node[i].get_y());
	}
	mi_x-=2, mi_y-=2, ma_x+=2, ma_y+=2;
	png map(int((ma_x-mi_x)*dis), int((ma_y-mi_y)*dis));
	for(size_t i=0;i<node.size();i++){
		map.circle(int((node[i].get_x()-mi_x)*dis), int((node[i].get_y()-mi_y)*dis), circle_r);
	}
    for(size_t i=0;i<ansedge.size();i++){
        map.line(int((node[ansedge[i].get_x()].get_x()-mi_x)*dis), int((node[ansedge[i].get_x()].get_y()-mi_y)*dis), 
	       			int((node[ansedge[i].get_y()].get_x()-mi_x)*dis), int((node[ansedge[i].get_y()].get_y()-mi_y)*dis), 
        			line_r);
    }
    map.save(_filename.c_str());
	for(size_t i=0;i<node.size();i++)node[i].reverse_y();
}
