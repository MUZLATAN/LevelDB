#include <iostream>

#include <mutex>
#include <thread>
#include <memory>
#include <unistd.h>


#include "SkipList.h"
#include "Arena.h"

using namespace std;
template<typename Key> class Comparator{
 public:
  Comparator(const Comparator& other){

  }
//   Comparator(const Key& a, const Key& b){

//   }
  Comparator(){}
  ~Comparator()  {}


  int operator()(const Key& a, const Key& b) const {
    if (a < b) {
      return -1;
    } else if (a > b) {
      return +1;
    } else {
      return 0;
    }
  }
  const char* Name() const  { return "comparator"; }


};
int main(){

    Arena arena;
    Comparator<int> cmp;
    SkipList<int, Comparator<int> > list(cmp, &arena);
    


    for (int i = 0; i < 30 ; i++)
    {
        int node = rand()%10000;
        std::cout<<node<<"  ";

        list.Insert(node);
    }
    list.PrintAll();

}