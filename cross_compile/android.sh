rm -rf build
mkdir build
cd build

ANDROID_NDK=$(dirname `which ndk-build`)
cmake -DCMAKE_TOOLCHAIN_FILE="$ANDROID_NDK/build/cmake/android.toolchain.cmake"\
      ..