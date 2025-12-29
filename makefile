#---------------------------------------------------------------------------------
# devkitPro 環境変数チェック
#---------------------------------------------------------------------------------
ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment. export DEVKITPRO=/opt/devkitpro")
endif

ifeq ($(strip $(DEVKITARM)),)
$(error "Please set DEVKITARM in your environment. export DEVKITARM=$(DEVKITPRO)/devkitARM")
endif

#---------------------------------------------------------------------------------
# ターゲット名
#---------------------------------------------------------------------------------
TARGET  := nds_test
BUILD   := build
SOURCES := source
INCLUDES:= include
DATA    := data

#---------------------------------------------------------------------------------
# 各種設定
#---------------------------------------------------------------------------------
ARCH    := -mthumb -mthumb-interwork
CFLAGS  := -g -Wall -O2
CXXFLAGS:= $(CFLAGS)
LDFLAGS :=

LIBS    := -lnds9
LIBDIRS :=

#---------------------------------------------------------------------------------
# rules
#---------------------------------------------------------------------------------
include $(DEVKITARM)/ds_rules
