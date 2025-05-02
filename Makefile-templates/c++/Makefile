# name of executable
BIN_NAME := main 

# compiler
CXX := g++

# build-type (debug or release)
BUILD ?= debug

# compiler flags
CXXFLAGS := -std=c++20

# compiler warnings
# Wall: 		most important warnings
# Wextra: 		additional warnings
# Wpedantic:	warns everything thats not standart
CXXFLAGS += -Wall -Wextra ##-Wpedantic

# Debug or realese flags
ifeq ($(BUILD),debug)
	CXXFLAGS += -g
else ifeq ($(BUILD),release)
	CXXFLAGS += -O2 -DNDEBUG 	# DNDEBUG deactivates assert()
else
	$(error Incompatible BUILD_mode: '$(BUILD)'. Use 'debug' or 'release')
endif

# source directory with all .cpp files
SRC_DIR := src
SRC := $(wildcard $(SRC_DIR)/*.cpp)

# object directory with all .o files
OBJ_DIR := build
OBJ := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC))

# RULE: build binary of objfiles
$(BIN_NAME): $(OBJ)
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -o $@ $^

# RULE: builds .o-file of every .cpp-file
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Flags for automatic dependencyfiles
CXXFLAGS += -MMD -MP

# Clean
.PHONY: clean
clean: 
	rm -rf $(OBJ_DIR) $(BIN_NAME)

# Rebuild: forced rebuild of complete project
.PHONY: rebuild
rebuild: clean all

# Run: compile program and runs it
.PHONY: run
run: $(BIN_NAME)
	./$(BIN_NAME)

# Install: copy binary in /usr/local/bin 
.PHONY: install 
install: $(BIN_NAME)
	@echo "Installing $(BIN_NAME) to /usr/local/bin/"
	@sudo install -Dm755 $(BIN_NAME) /usr/local/bin/$(BIN_NAME)

# standarttarget (gets executed if 'make' gets called)
.PHONY: all
all: format $(BIN_NAME)

# format Code based on different possible formats
# Possibilities: GOOGLE, WEBKIT, MICROSOFT, LLVM, MOZILLA, CHROMIUM, GNU
.PHONY: format
format: 
	clang-format -i $(shell find $(SRC_DIR) -name '*.cpp') $(shell find $(SRC_DIR) -name '*.h') --style=WebKit

# Makeflag for threading (efficient for big projects)
MAKEFLAGS += -j$(shell nproc)

# automatic insert of dependencies
-include $(OBJ:.o=.d)
