cc = g++
Library_Dir = -L /usr/lib64 -lprotobuf
Include_Dir = -I /usr/include
obj = main.o gb20999.pb.o
exe= grpc-example
gdb = 

$(exe):$(obj)
	$(cc) $(obj) $(gdb) -o $(exe) $(Library_Dir)
main.o:
	$(cc) -c $(gdb) main.cpp $(Include_Dir)
gb20999.pb.o:
	$(cc) -c $(gdb) protobuf/gb20999.pb.cc $(Include_Dir)


.PHONY:clean
clean:
	rm -f *.o $(exe)

