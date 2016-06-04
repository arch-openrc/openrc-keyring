# Maintainer: Chris Cromer <chris@cromer.cl>

pkgname=openrc-keyring
pkgver=20160504
pkgrel=1
pkgdesc='Arch Linux OpenRC PGP keyring'
arch=('any')
url='https://github.com/cromerc/openrc-keyring/'
license=('GPL')
install="${pkgname}.install"
source=("${pkgname}-${pkgver}.tar.gz"
        "${pkgname}-${pkgver}.tar.gz.sig")
md5sums=('5300b4dce642b120a2c053ca969685e8'
         'SKIP')
validpgpkeys=(
              'A55C3F1BA61CAA63036D82BAFA91071797BEEEC2' # cromer
             )

package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
