
EAPI=7

inherit go-module

DESCRIPTION="ollama AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="https://github.com/ollama/ollama/archive/refs/tags/v0.6.5.tar.gz https://ogenixo.github.io/mirror-local/vendor.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
#RDEPEND="acct-user/ollama acct-group/ollama"
BDEOEND="dev-build/cmake dev-lang/go"


src_unpack() {
		default
		#echo "current dir is $(pwd)"
		mv vendor ${S}/
}

src_compile() {
	cmake -B build
	ego build -o ollama
}







src_install() {
		dobin ollama
		#${WORKDIR}/${P}/ollama
}

