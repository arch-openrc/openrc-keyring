# Maintainer: Chris Cromer <chris@cromer.cl>

pkgname=openrc-keyring
pkgver=20170520
pkgrel=1
pkgdesc='Arch Linux OpenRC PGP keyring'
arch=('any')
url='https://sourceforge.net/projects/archopenrc/files/arch-openrc/openrc-keyring'
license=('GPL')
install="${pkgname}.install"
source=("${url}/${pkgname}-${pkgver}.tar.gz"
        "${url}/${pkgname}-${pkgver}.tar.gz.sig")
md5sums=('95a3a3073e6f262aee239039fb3e1689'
         'SKIP')
validpgpkeys=('A55C3F1BA61CAA63036D82BAFA91071797BEEEC2') # cromer

package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
