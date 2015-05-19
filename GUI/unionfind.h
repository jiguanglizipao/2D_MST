#ifndef UNIONFIND_H
#define UNIONFIND_H

#include <vector>

class UnionFind
{
private:
    std::vector<int> fa;
    int getf(int x);
public:
    UnionFind(int _n = 0);
    void merge(int x, int y);
    void reset(int _n);
    bool uni(int x, int y);
};

#endif // UNIONFIND_H
