libA_pcm=$(mktemp)
libB_pcm=$(mktemp)
lib_core_pcm=$(mktemp)

CLANG_BIN="/usr/local/google/home/usx/build/bin/clang++"

${CLANG_BIN} \
-fno-exceptions \
-I . \
-funsigned-char \
-fnew-alignment=8 \
-fcoro-aligned-allocation \
-fmodule-name=lib_core \
-Xclang=-fmodule-map-file-home-is-cwd \
-xc++ \
-Xclang=-emit-module \
-pthread \
-std=gnu++20 \
-c \
module-reproducer/lib_core.cppmap \
-o \
${lib_core_pcm} \
&& \
${CLANG_BIN} \
-iquote \
. \
-fno-exceptions \
-funsigned-char \
-fnew-alignment=8 \
-fcoro-aligned-allocation \
-fmodule-name=libB \
-Xclang=-fmodule-map-file-home-is-cwd \
-xc++ \
-Xclang=-emit-module \
-Xclang=-fmodule-file=${lib_core_pcm} \
-pthread \
-std=gnu++20 \
-c \
module-reproducer/libB.cppmap \
-o \
${libB_pcm} \
&& \
${CLANG_BIN} \
-fno-exceptions \
-funsigned-char \
-fnew-alignment=8 \
-fcoro-aligned-allocation \
-fmodule-name=libA \
-Xclang=-fmodule-map-file-home-is-cwd \
-xc++ \
-Xclang=-emit-module \
-Xclang=-fmodule-file=${libB_pcm} \
-pthread \
-std=gnu++20 \
-c \
module-reproducer/libA.cppmap \
-o \
${libA_pcm} \
&& \
${CLANG_BIN} \
-iquote \
. \
-fno-exceptions \
-funsigned-char \
-fnew-alignment=8 \
-fcoro-aligned-allocation \
-Xclang=-fmodule-file=${libA_pcm} \
-pthread \
-std=gnu++20 \
module-reproducer/access_boundaries_test.cc
