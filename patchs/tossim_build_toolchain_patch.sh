#!/bin/bash


################################################################################### build params

find ./src/tinyos-main/apps -name "Makefile" -exec \
sed -i '/^COMPONENT=.*/i\
CFLAGS+=-I/usr/lib/gcc/x86_64-pc-linux-gnu/4.9.4/include\
CFLAGS+=-I/usr/include\
PFLAGS+=-D_Float128=double\
PFLAGS+=-D_BITS_FLOATN_H=0\
PYTHON_VERSION=2.7\
CLASSPATH="/usr/lib/java/tinyos.jar"'\
  {} \;





