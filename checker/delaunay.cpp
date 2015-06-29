#include "delaunay.h"
#include <fstream>
#include <cmath>
using namespace std;

Delaunay::Delaunay(string _filename)
{
    node.clear();
    edge.clear();
    ifstream fi(_filename.c_str());
    fi>>size_node;
    for(int i=0;i<size_node;i++)
    {
        double x, y;
        fi>>x>>y;
        node.push_back(graph_node(x, y));
    }
    fi.close();
}

void Delaunay::calc()
{
    for(size_t i=0;i<node.size();i++){
	    for(size_t j=0;j<node.size();j++){
	        edge.push_back(graph_edge(i, j, sqrt(pow(node[i].get_x()-node[j].get_x(), 2)+pow(node[i].get_y()-node[j].get_y(), 2))));
        }
    }
}
