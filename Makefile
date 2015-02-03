DEST ?= ~
EMACS_D ?= $(DEST)/.emacs.d

install: 
	cp .emacs $(DEST)
	mkdir -p $(EMACS_D)
	cp -r .emacs.d/* $(EMACS_D)

vacuum:
	rm -f $(DEST)/.emacs
	rm -rf $(EMACS_D)
