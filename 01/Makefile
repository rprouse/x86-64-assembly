RM_BINARY=rm
RM_FLAGS=-rf
MKDIR_BINARY=mkdir
MKDIR_FLAGS=-p
BUILD_FOLDER=$(abspath ./bin)
DIR = $(abspath .)
#INPUTS = $(wildcard $(DIR)/*.asm)
INPUTS = $(DIR)/main.asm
NASM_BINARY = nasm
NASM_FLAGS = -f win64
LINK_BINARY = link
LIBPATH = "$(WindowsSdkDir)Lib\$(WindowsSDKVersion)um\x64"
LINK_FLAGS = /subsystem:console /defaultlib:kernel32.lib /entry:main /MACHINE:X64 /LIBPATH:$(LIBPATH)

.DEFAULT_GOAL := default

# Create the build folder
$(BUILD_FOLDER):
	$(MKDIR_BINARY) $(MKDIR_FLAGS) $(@)

# Compiles all ASM files in a given
$(INPUTS) : $(BUILD_FOLDER)
	$(NASM_BINARY) $(NASM_FLAGS) $@ -o $(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.obj,$(@))
	$(LINK_BINARY) $(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.obj,$(@)) $(LINK_FLAGS) /out:$(patsubst $(DIR)/%.asm,$(BUILD_FOLDER)/%.exe,$(@))

default: clean all

all: build

build: $(INPUTS)

clean:
	$(RM_BINARY) $(RM_FLAGS) $(BUILD_FOLDER)
