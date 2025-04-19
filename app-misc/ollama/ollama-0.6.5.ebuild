
EAPI=7

inherit go-module

DESCRIPTION="ollama AI"
HOMEPAGE="https://ollama.com/"
SRC_URI="https://github.com/ollama/ollama/archive/refs/tags/v0.6.5.tar.gz"
SLOT="0"
KEYWORDS="~amd64"
#RDEPEND="acct-user/ollama acct-group/ollama"
BDEOEND="dev-build/cmake dev-lang/go"


src_unpack() {
		default
		echo "current dir is $(pwd)"
		cd "${S}" || or die "cd ISSUE"
		ego mod vendor || or die "go mod vendor failed again  :P"
}








src_install() {
		doins ${WORKDIR}/${P}/ollama
}

