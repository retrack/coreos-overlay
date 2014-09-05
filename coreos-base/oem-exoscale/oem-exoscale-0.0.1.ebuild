#
# Copyright (c) 2011 The Chromium OS Authors. All rights reserved.
# Copyright (c) 2014 CoreOS, Inc.. All rights reserved.
# Distributed under the terms of the GNU General Public License v2
# $Header:$
#

EAPI=5

DESCRIPTION="OEM suite for Exoscale images"
HOMEPAGE=""
SRC_URI=""

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

# no source directory
S="${WORKDIR}"

src_install() {
	into "/usr/share/oem"
	dobin ${FILESDIR}/exoscale-dhcp
	dobin ${FILESDIR}/exoscale-ssh-key
	dobin ${FILESDIR}/exoscale-coreos-cloudinit
	dobin ${FILESDIR}/coreos-setup-environment
	dobin ${FILESDIR}/coreos-setup-network

	insinto "/usr/share/oem"
	doins ${FILESDIR}/cloud-config.yml
}
