# $NetBSD: Makefile,v 1.5 2012/06/16 04:45:39 markd Exp $

DISTNAME=	kde-baseapps-${_KDE_VERSION}
PKGNAME=	${DISTNAME:S/-4/4-4/}
CATEGORIES=	x11
COMMENT=	Base modules for the KDE 4 integrated X11 desktop

.include "../../meta-pkgs/kde4/Makefile.kde4"

CONFLICTS=	konq-plugins-[0-9]*

# BUILD_MAKE_FLAGS+= VERBOSE=1

REPLACE_RUBY+=	dolphin/src/settings/services/servicemenuinstallation
REPLACE_RUBY+=	dolphin/src/settings/services/servicemenudeinstallation

REPLACE_INTERPRETER+=	xdg-open
REPLACE.scheme.old=	.*/bin/env xdg-open
REPLACE.scheme.new=	${PREFIX}/bin/xdg-open
REPLACE_FILES.scheme=	lib/konq/Templates/Program.desktop

.include "../../lang/ruby/replace.mk"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../graphics/qimageblitz/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../x11/kde-runtime4/buildlink3.mk"
.include "../../x11/kde-workspace4/buildlink3.mk"
.include "../../lang/ruby/buildlink3.mk"
.include "../../www/tidy/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
