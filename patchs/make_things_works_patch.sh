#!/bin/bash





############################################################################## -- mega2560
sed -i '/^PFLAGS += -mmcu=atmega2560.*/a\PFLAGS += -D__AVR_DEV_LIB_NAME__=m2560' src/tinyos-main/support/make/platforms/mega2560.platform


sed -i '/^TARGET = mega2560.*/a\
PROGRAMMER ?= avrdude\
ifeq ($(PROGRAMMER),avrdude)\
  PROGRAMMER_PART ?= -pm2560 #-U efuse:w:0xff:m\
endif' src/tinyos-main/support/make/targets/mega2560.target


cp ./common/patchs/files/m2560.extra src/tinyos-main/support/make/avr/
