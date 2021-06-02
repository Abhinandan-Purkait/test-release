GOBIN := $(or $(shell go env GOBIN 2>/dev/null), $(shell go env GOPATH 2>/dev/null)/bin)

PACKAGES = $(shell go list ./... | grep -v 'vendor\|pkg/generated')

#name openebsctl to be a kubectl-plugin
OPENEBSCTL=kubectl-openebs

.PHONY: openebsctl
openebsctl:
	@echo "----------------------------"
	@echo "--> Building"
	@go build main.go