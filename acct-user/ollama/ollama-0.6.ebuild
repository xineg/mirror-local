# Copyright 2020-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User account for ollama"
ACCT_USER_HOME="/var/lib/ollama"
ACCT_USER_HOME_OWNER=ollama:ollama
ACCT_USER_GROUPS=( ${PN} )
ACCT_USER_ID=497
RDEPEND="acct-group/ollama"
KEYWORDS="~amd64"

acct-user_add_deps

