#ifndef KRUSKAL_H
#define KRUSKAL_H

#include "delaunay.h"
#include "unionfind.h"

class Kruskal : public Delaunay
{
private:
    UnionFind uni;
    double ans;
    std::vector<graph_edge> ansedge;
public:
    Kruskal(int _size_node = 0, int _size_edge = 0);
    Kruskal(QString _filename);
    void calc();
    double get_ans() const;
    std::vector<graph_edge> & get_ansedge();
    virtual ~Kruskal();
};
inline Kruskal::Kruskal(int _size_node, int _size_edge)
    :Delaunay(_size_node, _size_edge)
{
    ansedge.clear();
    ans = 0;
}
inline double Kruskal::get_ans() const
{
    return ans;
}
inline std::vector<graph_edge> & Kruskal::get_ansedge()
{
    return ansedge;
}

inline Kruskal::~Kruskal()
{
}

#endif // KRUSKAL_H
