# $NetBSD: Makefile,v 1.23 2012/06/14 07:43:22 sbd Exp $
#

DISTNAME=		glade3-3.4.5
PKGREVISION=		14
CATEGORIES=		devel
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glade3/3.4/}
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://glade.gnome.org/
COMMENT=		User interface builder for the GTK2+ toolkit

PKG_DESTDIR_SUPPORT=	user-destdir

USE_PKGLOCALEDIR=	yes
USE_LIBTOOL=		yes
USE_TOOLS+=		pkg-config intltool gmake msgfmt
GNU_CONFIGURE=		yes

PKGCONFIG_OVERRIDE+=	data/gladeui-1.0.pc.in

.include "../../x11/gtk2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../devel/libbonoboui/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
