# Maintainer: Chris Cromer <chris@cromer.cl>

pkgname=openrc-keyring
pkgver=20160504
pkgrel=1
pkgdesc='Arch Linux OpenRC PGP keyring'
arch=('any')
url='https://sourceforge.net/projects/archopenrc/files/arch-openrc'
license=('GPL')
install="${pkgname}.install"
source=("${url}/${pkgname}-${pkgver}.tar.gz"
        "${url}/${pkgname}-${pkgver}.tar.gz.sig")
md5sums=('21b10c8597b6ff1e07458a007e95a495'
         'SKIP')
validpgpkeys=(
              '4F4CF80BFFB69EB90F00150A5BD217F2BBAAAE9E' # cromer
             )

package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
