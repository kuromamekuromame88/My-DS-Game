TARGET := ds-game
BUILD  := build
SOURCES := source

ifeq ($(strip $(DEVKITARM)),)
$(error DEVKITARM is not set)
endif

include $(DEVKITPRO)/libnds/nds_rules.mk
