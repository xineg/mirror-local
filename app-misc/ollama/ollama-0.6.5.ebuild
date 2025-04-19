
EAPI=8

inherit go-module

DESCRIPTION="ollama AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="https://github.com/ollama/ollama/archive/refs/tags/v0.6.5.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
#RDEPEND="acct-user/ollama acct-group/ollama"
BDEOEND="dev-build/cmake dev-lang/go"




src_compile() {
		cmake -B build
		cmake --build build
		go build -o ollama
}

src_install() {
		insinto /usr/bin/
		doins ${WORKDIR}/${P}/ollama
}

