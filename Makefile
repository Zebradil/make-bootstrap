include .bootstrap.mk

# start defining your targets below

## Test

hello: ## Example hello world target
hello: ## with multiline help message
	echo "Hello $(firstword $(MAKEFILE_LIST))"
.PHONY: hello

another:: ## This should go first

test-defined:: ## Test check_defined function
	@:$(call check_defined, FOO BAR, FOO and BAR must be set)
