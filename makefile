TARGET := ds-test
BUILD  := build
SOURCES := source

ifeq ($(strip $(DEVKITPRO)),)
$(error DEVKITPRO is not set)
endif

ifeq ($(strip $(DEVKITARM)),)
$(error DEVKITARM is not set)
endif

include $(DEVKITPRO)/devkitARM/ds_rules
