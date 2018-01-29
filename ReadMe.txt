pacman -Syuu

pacman -S --needed base-devel mingw-w64-i686-toolchain mingw-w64-x86_64-toolchain \
                    cmake make curl tar unzip git subversion mercurial \
                    mingw-w64-i686-cmake mingw-w64-x86_64-cmake
					
pacman -Ss boost
pacman -Sy mingw-w64-i686-boost mingw-w64-x86_64-boost
pacman -Sy mingw-w64-i686-protobuf mingw-w64-x86_64-protobuf
pacman -Sy mingw-w64-i686-grpc mingw-w64-x86_64-grpc





#-----------------------------
#edit file /../home/../.bashrc


alias cls='clear'
alias c='cd /c'
alias home='cd ~'
alias code='cd /c/code'
alias demo='cd /c/code/_samples'
alias bin='cd /mingw64/bin'
alias min='clear && PATH=/mingw64/bin:$PATH && MIN_LIB=/c/msys2/App/msys32/mingw64/lib && MIN_BIN=/c/msys2/App/msys32/mingw64/bin && MIN_INCLUDE=/c/msys2/App/msys32/mingw64/include && PREFIX=x86_64-w64-mingw32 && export C=$PREFIX-gcc.exe && export CC=$PREFIX-gcc.exe && export CXX=$PREFIX-g++.exe && export CPP=$PREFIX-cpp.exe && export RANLIB=$PREFIX-gcc-ranlib.exe && export CXXCPP=$PREFIX-cpp.exe && export AR=$PREFIX-ar.exe && export NM=$PREFIX-nm.exe && export DLLTOOL=$PREFIX-dlltool.exe && export DLLWRAP=$PREFIX-dllwrap.exe && export LD=$PREFIX-ld.exe && export OBJCOPY=$PREFIX-objcopy.exe && export OBJDUMP=$PREFIX-objdump.exe && export PKGCONFIG=$PREFIX-pkg-config.exe && echo && gcc -v && echo'


# g++ -I"C:/C++/protobuf/protobuf.3.5.1-gcc-7.2.0-sjlj/include" -L"C:/C++/protobuf/protobuf.3.5.1-gcc-7.2.0-sjlj/lib" main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11 -o app.exe
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 -o app.exe

g++ -Wall main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 -o app.exe


# g++ -Wall main.cpp addressbook.pb.cc -pthread -static-libgcc -static-libstdc++ -std=c++11 $MIN_LIB/libprotobuf.dll.a -o app.exe
# g++ -Wall main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 $MIN_BIN/libprotobuf.dll $MIN_BIN/libwinpthread-1.dll -o app.exe

