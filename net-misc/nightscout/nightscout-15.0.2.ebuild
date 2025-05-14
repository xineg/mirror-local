#!/sbin/openrc-run
# Copyright (c) 2007-2015 The OpenRC Authors.
# See the Authors file at the top-level directory of this distribution and
# https://github.com/OpenRC/openrc/blob/HEAD/AUTHORS
#
# This file is part of OpenRC. It is subject to the license terms in
# the LICENSE file found in the top-level directory of this
# distribution and at https://github.com/OpenRC/openrc/blob/HEAD/LICENSE
#!/sbin/openrc-run

description="Nightscout Web CGM"
RDEPEND="net-
HOMEPAGE="
SLOT="18"

src_install()  {
		doinitd "${FILESDIR}/nightscout.init" /etc/init.d/nightscout
}





