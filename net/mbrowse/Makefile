# $NetBSD: Makefile,v 1.9 2012/03/03 00:13:46 wiz Exp $

DISTNAME=	mbrowse-0.4.3
PKGREVISION=	3
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mbrowse/}

MAINTAINER=	heinz@NetBSD.org
HOMEPAGE=	http://www.kill-9.org/mbrowse/
COMMENT=	Graphical SNMP MIB browser
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir
PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_TOOLS+=		pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--with-snmp-prefix=${BUILDLINK_PREFIX.net-snmp}

.include "../../net/net-snmp/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
