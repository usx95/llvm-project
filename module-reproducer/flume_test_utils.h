#ifndef FLUME_TEST_UTIL_H_
#define FLUME_TEST_UTIL_H_

// #include <string>
#include <vector>

template <typename T>
class Stream;

namespace N {
template <typename T>
std::vector<T> Friend(Stream<T> stream);
}  // namespace N

template <typename T>
class Stream {
  template <typename V>
  friend std::vector<V> N::Friend(Stream<V> stream);
};

namespace N {

template <typename T>
std::vector<T> Friend(Stream<T> stream) {
  std::vector<T> ret;
  return ret;
}

}  // namespace N

#endif  // FLUME_TEST_UTIL_H_
