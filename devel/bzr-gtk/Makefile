# $NetBSD: Makefile,v 1.15 2012/04/08 21:28:17 wiz Exp $

DISTNAME=	bzr-gtk-${VER}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://launchpad.net/bzr-gtk/gtk2/${VER}/+download/
VER=		0.100.0

MAINTAINER=	ddeus.pkgsrc@mailnull.com
HOMEPAGE=	http://bazaar-vcs.org/bzr-gtk
COMMENT=	Various GTK+ frontends to Bazaar commands
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	${PYPKGPREFIX}-cairo>=1.0:../../graphics/py-cairo
DEPENDS+=	${PYPKGPREFIX}-gtk2>=2.8:../../x11/py-gtk2

PYDISTUTILSPKG=	yes
REPLACE_PYTHON=	create-credits.py info.py
# Only these python versions are supported, see:
# http://doc.bazaar.canonical.com/bzr.dev/en/whats-new/whats-new-in-2.4.html
PYTHON_VERSIONS_ACCEPTED=	27 26

USE_TOOLS+=	msgfmt

# Insists on working X display, and fails anyway, so disable.
BZR_PLUGIN_TEST=no

.include "../../devel/bzr/plugin.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
