V=20170520

PREFIX = /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 openrc{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/openrc{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

dist:
	git archive --format=tar --prefix=openrc-keyring-$(V)/ $(V) | gzip -9 > openrc-keyring-$(V).tar.gz
	gpg -u $(KEY) --detach-sign --use-agent openrc-keyring-$(V).tar.gz

#upload:
#	scp openrc-keyring-$(V).tar.gz openrc-keyring-$(V).tar.gz.sig nymeria.archlinux.org:/srv/ftp/other/archlinux-keyring/

#.PHONY: install uninstall dist upload
.PHONY: install uninstall dist
