#include "module-reproducer/sensor_data.h"
#include "Eigen/Geometry"
#include "module-reproducer/tensor.h"

void foo() {
  Eigen::AngleAxisf(0, Eigen::Vector3f::UnitZ()) *
      Eigen::Affine3f(Eigen::Translation3f(0, 0, 0));
}
