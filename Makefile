# Go compiler
GO := go

# Name of your Go program
PROGRAM := golang-tdd-example

# Directories
SRC_DIR := ./src
BUILD_DIR := ./build
TEST_DIR := ./test

# Source files
SOURCES := $(wildcard $(SRC_DIR)/*.go)

# Build target
build: $(SOURCES)
	@mkdir -p $(BUILD_DIR)
	$(GO) build -o $(BUILD_DIR)/$(PROGRAM) $(SRC_DIR)

# Test target
test:
	@mkdir -p $(TEST_DIR)
	$(GO) test -v ./...

# Clean target
clean:
	rm -rf $(BUILD_DIR) $(TEST_DIR)

.PHONY: build test clean