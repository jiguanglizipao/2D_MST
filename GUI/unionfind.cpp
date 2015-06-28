#include "unionfind.h"
using namespace std;

UnionFind::UnionFind(int _n)
{
    fa.clear();
    for(int i=0;i<_n;i++)fa.push_back(i);
}

void UnionFind::reset(int _n)
{
    fa.clear();
    for(int i=0;i<_n;i++)fa.push_back(i);
}


int UnionFind::getf(int x)
{
    return (x == fa[x])?x:getf(fa[x]);
}

void UnionFind::merge(int x, int y)
{
    x=getf(x), y=getf(y);
    if(x != y)fa[y]=x;
}

bool UnionFind::uni(int x, int y)
{
    return getf(x)==getf(y);
}

