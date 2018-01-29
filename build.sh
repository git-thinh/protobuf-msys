

# g++ -I"C:/C++/protobuf/protobuf.3.5.1-gcc-7.2.0-sjlj/include" -L"C:/C++/protobuf/protobuf.3.5.1-gcc-7.2.0-sjlj/lib" main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -std=c++11 -o app.exe
# g++ main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 -o app.exe

g++ -Wall main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 -o app.exe

# g++ -Wall main.cpp addressbook.pb.cc -pthread -static-libgcc -static-libstdc++ -std=c++11 $MIN_LIB/libprotobuf.dll.a -o app.exe
# g++ -Wall main.cpp addressbook.pb.cc -lprotobuf -pthread -static-libgcc -static-libstdc++ -std=c++11 $MIN_BIN/libprotobuf.dll $MIN_BIN/libwinpthread-1.dll -o app.exe




