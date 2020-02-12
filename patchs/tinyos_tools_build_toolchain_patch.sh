#!/bin/bash

################################################################################### include
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/message/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/python/packet/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/c/sf/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/packet/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/message/Makefile.am
sed -i 's/$(TFLAGS)/$(TFLAGS) -I\/usr\/lib\/gcc\/x86_64-pc-linux-gnu\/4.9.4\/include\/ -I\/usr\/include\/ /g' src/tinyos-main/tools/tinyos/java/net/tinyos/tools/Makefile.am

################################################################################### gcc compiler version
sed -i 's/export GCC=gcc/export GCC=gcc-4.9/g' src/tinyos-main/support/make/extras/sim.extra
sed -i 's/GPP=g++/GPP=g++-4.9/g' src/tinyos-main/support/make/extras/sim.extra

################################################################################### javac compiler
find ./src/tinyos-main/apps -name "Makefile" -exec \
sed -i 's/javac /javac -classpath $(CLASSPATH) /g'\
  {} \;




