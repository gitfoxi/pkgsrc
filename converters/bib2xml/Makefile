# $NetBSD: Makefile,v 1.11 2008/03/03 05:51:07 jlam Exp $
#

DISTNAME=	bib2xml-10062002
PKGNAME=	${DISTNAME:C/-(....)(....)/-\2\1/}
PKGREVISION=	1
CATEGORIES=	converters textproc
MASTER_SITES=	http://www-plan.cs.colorado.edu/henkel/stuff/bib2xml/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www-plan.cs.colorado.edu/henkel/stuff/bib2xml/
COMMENT=	BibTeX to XML converter

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}/bib2xml
GNU_CONFIGURE=	YES
BUILD_DIRS=	${WRKSRC}/progs

INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_PROGRAM} ${BUILD_DIRS}/bib2xml ${DESTDIR}${PREFIX}/bin

.include "../../textproc/btparse/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
