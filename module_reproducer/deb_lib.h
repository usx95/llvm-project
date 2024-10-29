#ifndef DEB_LIB_H_
#define DEB_LIB_H_

#include <vector>
#include <string>

namespace f {
template <typename T>
std::vector<T> A();

template <typename T>
class C {
  template <typename V>
  friend std::vector<V> A();
};

C<std::string> c;
}  // namespace f
#endif  // DEB_LIB_H_
