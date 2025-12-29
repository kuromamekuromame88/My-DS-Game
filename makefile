TARGET := ds-game
BUILD  := build
SOURCES := source

ifndef DEVKITPRO
$(error DEVKITPRO is not set)
endif

include $(DEVKITPRO)/libnds/libnds_rules
