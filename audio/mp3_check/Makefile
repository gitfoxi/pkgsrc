# $NetBSD: Makefile,v 1.12 2008/03/02 06:10:33 jlam Exp $
#

DISTNAME=	mp3_check-1.98
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3check/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://mp3check.sourceforge.net/
COMMENT=	mp3 file checker

PKG_DESTDIR_SUPPORT=	user-destdir

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mp3_check ${DESTDIR}${PREFIX}/bin

.include "../../mk/bsd.pkg.mk"
