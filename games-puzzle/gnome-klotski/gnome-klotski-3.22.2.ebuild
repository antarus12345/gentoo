# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
VALA_MIN_API_VERSION="0.28"

inherit gnome2 vala

DESCRIPTION="Slide blocks to solve the puzzle"
HOMEPAGE="https://wiki.gnome.org/Apps/Klotski"

LICENSE="GPL-3+ FDL-1.1+"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-libs/glib-2.32:2
	dev-libs/libgee:0.8=
	dev-libs/libgnome-games-support:1
	>=gnome-base/librsvg-2.32.0:2
	>=x11-libs/gtk+-3.19.0:3
"
DEPEND="${RDEPEND}
	$(vala_depend)
	app-text/yelp-tools
	dev-libs/appstream-glib
	>=dev-util/intltool-0.50
	sys-devel/gettext
	virtual/pkgconfig
"

src_prepare() {
	gnome2_src_prepare
	vala_src_prepare
}
