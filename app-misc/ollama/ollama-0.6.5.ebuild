# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="ollama AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="https://github.com/ollama/ollama/archive/refs/tags/v0.6.5.tar.gz https://ogenixo.github.io/mirror-local/vendor.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
RDEPEND="app-misc/ollama-init"
BDEPEND="dev-build/cmake dev-lang/go"


src_unpack() {
		default
		mv vendor ${S}/
}

src_compile() {
	cmake -B build
	ego build -o ollama
}

src_install() {
		dobin ollama
}

