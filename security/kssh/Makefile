# $NetBSD: Makefile,v 1.44 2012/06/14 07:44:08 sbd Exp $
#

DISTNAME=	kssh-0.7
PKGREVISION=	33
CATEGORIES=	security kde
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kssh/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kssh.sourceforge.net/
COMMENT=	KDE Front-end to SSH

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	YES
GNU_CONFIGURE=	YES

.include "../../meta-pkgs/kde3/kde3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../net/kdenetwork3/buildlink3.mk"
.include "../../x11/kdelibs3/buildlink3.mk"
.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
