#!/bin/bash

sed -i '/^PFLAGS += -mmcu=atmega2560.*/a\PFLAGS += -D__AVR_DEV_LIB_NAME__=m2560' src/tinyos-main/support/make/platforms/mega2560.platform


