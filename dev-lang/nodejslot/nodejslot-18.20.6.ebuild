# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Node.js v18.x LTS - slotted for compatibility"
HOMEPAGE="https://nodejs.org"
SRC_URI="https://nodejs.org/dist/v${PV}/node-v${PV}-linux-x64.tar.xz"
SLOT="18"
LICENSE="MIT"
KEYWORDS="~amd64"



S="${WORKDIR}/node-v${PV}-linux-x64"

src_install(){
		local dest="/opt/nodejs-18.20.6"
		dodir "${dest#${EPREFIX}}"
		cp -a *  "${D}${dest}" || die "cp failed"
		fperms +x "${dest}/bin/node" "${dest}/bin/npm" "${dest}/bin/npx"
}
