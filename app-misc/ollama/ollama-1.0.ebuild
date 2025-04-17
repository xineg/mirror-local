# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Openrc init file for backgrounding ollam AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="ollama.com/download/ollama-linux-amd64.tgz"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="acct-user/ollama acct-group/ollama"


S="${WORKDIR}"

src_unpack() {

}

src_install() {

}
