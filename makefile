TARGET := ds-game
BUILD  := build
SOURCES := source

ifeq ($(strip $(DEVKITARM)),)
$(error DEVKITARM is not set)
endif

include $(DEVKITPRO)/devkitARM/nds_rules.mk
