# mermaid-export Makefile

PREFIX     ?= /usr/local
BINDIR     ?= $(PREFIX)/bin
MANDIR     ?= $(PREFIX)/share/man/man1
SCRIPT      = mermaid-export
MANPAGE     = man/mermaid-export.1

.PHONY: all install uninstall test

all:
	@echo "Run 'sudo make install' to install mermaid-export"
	@echo "Run 'sudo make uninstall' to remove it"

install:
	@echo "Installing $(SCRIPT) to $(BINDIR) ..."
	install -Dm755 $(SCRIPT) $(BINDIR)/$(SCRIPT)
	@echo "Installing man page to $(MANDIR) ..."
	install -Dm644 $(MANPAGE) $(MANDIR)/$(MANPAGE)
	@echo "Done. Run 'mermaid-export --help' to get started."

uninstall:
	@echo "Removing $(SCRIPT) from $(BINDIR) ..."
	rm -f $(BINDIR)/$(SCRIPT)
	@echo "Removing man page from $(MANDIR) ..."
	rm -f $(MANDIR)/$(MANPAGE)
	@echo "Done."

test:
	@echo "Running shellcheck ..."
	shellcheck $(SCRIPT) || true
	@echo "Test complete."
