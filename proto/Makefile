SUBDIR := api man
TOOLS  := protoc protoc-gen-go

k := $(foreach exec,$(TOOLS), $(if $(shell which $(exec)), , $(error "tool '$(exec)' found in PATH")))

.PHONY: all clean help $(SUBDIR)
all: $(SUBDIR)	# build all

clean: $(SUBDIR)	# clean temporary file

$(SUBDIR):
	$(MAKE) -C $@ $(MAKECMDGOALS)


help:	# show this message
	@printf "Usage: make [OPTION]\n"
	@printf "\n"
	@perl -nle 'print $$& if m{^[\w-]+:.*?#.*$$}' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?#"} {printf "    %-18s %s\n", $$1, $$2}'

