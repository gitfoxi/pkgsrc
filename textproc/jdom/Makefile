# $NetBSD: Makefile,v 1.7 2012/01/14 02:09:37 hans Exp $
#

DISTNAME=	jdom-1.1.1
CATEGORIES=	textproc
MASTER_SITES=	http://www.jdom.org/dist/binary/
EXTRACT_SUFX=	.zip

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.jdom.org/
COMMENT=	Simple API for processing XML documents in Java

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=	# only Java
USE_TOOLS+=	pax zip
AUTO_MKDIRS=	yes
WRKSRC=		${WRKDIR}/jdom

do-build:
	cd ${WRKSRC}/src/java && ${TOOLS_PATH.zip} -r ${WRKSRC}/jdom-src.zip org

do-install:
	cd ${WRKSRC} && ${INSTALL_DATA} build/jdom.jar jdom-src.zip ${DESTDIR}${PREFIX}/lib/java/
	cd ${WRKSRC}/build/apidocs && pax -wr * ${DESTDIR}${PREFIX}/share/doc/jdom/

.include "../../mk/bsd.pkg.mk"
