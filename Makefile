SUBDIR := proto

.PHONY: all clean help $(SUBDIR)

build: $(SUBDIR)	# build all
	go build .

clean: $(SUBDIR)	# clean temporary file
	rm -f pttweb

$(SUBDIR):
	$(MAKE) -C $@ $(MAKECMDGOALS)

help:	# show this message
	@printf "Usage: make [OPTION]\n"
	@printf "\n"
	@perl -nle 'print $$& if m{^[\w-]+:.*?#.*$$}' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?#"} {printf "    %-18s %s\n", $$1, $$2}'
