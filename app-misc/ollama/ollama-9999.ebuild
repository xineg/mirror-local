
EAPI=8

inherit go-module git-r3 

DESCRIPTION="ollama AI"
HOMEPAGE="https://ollama.com/"
EGIT_REPO_URI="https://github.com/ollama/ollama.git"
SLOT="0"
KEYWORDS="~amd64"
#RDEPEND="acct-user/ollama acct-group/ollama"
BDEOEND="dev-build/cmake dev-lang/go"



src_compile() {
		go build -o ollama
}

src_install() {
		insinto /usr/bin/
		doins ${WORKDIR}/${P}/ollama
}

