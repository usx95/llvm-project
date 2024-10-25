CLANG_BIN=/usr/local/google/home/usx/build/bin/clang++ \
 && \
 sensor_data=$(mktemp) \
 && \
 echo "Building sensor_data.cc" \
 && \
 ${CLANG_BIN} \
 -DEIGEN_USE_CUSTOM_PLAIN_ASSERT \
 -iquote \
 . \
 -I../../eigen\
 -fno-exceptions \
 -funsigned-char \
 -fnew-alignment=8 \
 -fcoro-aligned-allocation \
 -mavx \
 -fmodule-name=sensor_data \
 -Xclang=-fmodule-map-file-home-is-cwd \
 -xc++ \
 -Xclang=-emit-module \
 -Xclang=-fmodules-embed-all-files \
 -pthread \
 -ftrivial-auto-var-init=pattern \
 -std=gnu++20 \
 -c \
 module-reproducer/sensor_data.cppmap \
 -o \
 ${sensor_data} \
 && \
 tensor=$(mktemp) \
 && \
 echo "Building tensor.cc" \
 && \
 ${CLANG_BIN} \
 -DEIGEN_USE_CUSTOM_PLAIN_ASSERT \
 -iquote \
 . \
 -I../../eigen\
 -fno-exceptions \
 -funsigned-char \
 -fnew-alignment=8 \
 -fcoro-aligned-allocation \
 -mavx \
 -fmodule-name=tensor \
 -Xclang=-fmodule-map-file-home-is-cwd \
 -xc++ \
 -Xclang=-emit-module \
 -Xclang=-fmodules-embed-all-files \
 -pthread \
 -ftrivial-auto-var-init=pattern \
 -std=gnu++20 \
 -c \
 module-reproducer/tensor.cppmap \
 -o \
 ${tensor} \
 && \
 echo "Building base.cc" \
 && \
 ${CLANG_BIN} \
 -iquote \
 . \
 -I../../eigen\
 -fno-exceptions \
 -funsigned-char \
 -fnew-alignment=8 \
 -fcoro-aligned-allocation \
 -mavx \
 -Xclang=-fmodule-file=${sensor_data} \
 -Xclang=-fmodule-file=${tensor} \
 -pthread \
 -ftrivial-auto-var-init=pattern \
 -std=gnu++20 \
 module-reproducer/base.cc
