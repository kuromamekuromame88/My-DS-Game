#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------

TARGET  := game
BUILD   := build
SOURCES := source
INCLUDES:= include

#---------------------------------------------------------------------------------
# devkitPro paths
#---------------------------------------------------------------------------------
ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=/opt/devkitpro/devkitARM")
endif

include $(DEVKITPRO)/libnds/nds_rules

#---------------------------------------------------------------------------------
# Compiler flags
#---------------------------------------------------------------------------------
ARCH    := -mthumb -mthumb-interwork
CFLAGS  := -g -Wall -O2 $(ARCH)
CXXFLAGS:= $(CFLAGS)
ASFLAGS := -g $(ARCH)

LIBS := -lnds9
