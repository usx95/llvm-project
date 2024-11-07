#include "flume_test_utils.h"
struct S {};

void foo() {
  N::Friend<S>({});
}