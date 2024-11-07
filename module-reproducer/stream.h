#ifndef STREAM_H_
#define STREAM_H_

#include <string>
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

Stream<std::string> Bar() { return Stream<std::string>(); }

#endif  // STREAM_H_
