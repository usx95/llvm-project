#ifndef ANOTHER_LIB_H_
#define ANOTHER_LIB_H_

#include "module_reproducer/deb_lib.h"

namespace f {

template <typename T>
std::vector<T> A() {
  return std::vector<T>{};
}
}  // namespace f
#endif  // ANOTHER_LIB_H_
