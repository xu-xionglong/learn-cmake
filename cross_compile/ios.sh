rm -rf build
mkdir build
cd build

use_cmake_built_in_ios_support=true

if $use_cmake_built_in_ios_support; then
	cmake -G "Xcode"\
		  -DCMAKE_SYSTEM_NAME="iOS"\
		  -DCMAKE_OSX_ARCHITECTURES="arm64"\
	      ..
else
	if [[ ! -e "../iOS.cmake" ]]; then
	    curl -o "../iOS.cmake" "https://opensource.apple.com/source/clang/clang-800.0.38/src/cmake/platforms/iOS.cmake"
	fi

	cmake -G "Xcode"\
		  -DCMAKE_TOOLCHAIN_FILE="../iOS.cmake"\
		  -DCMAKE_OSX_ARCHITECTURES="arm64"\
	      ..
fi
