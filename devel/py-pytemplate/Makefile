# $NetBSD: Makefile,v 1.3 2012/04/08 19:08:54 wiz Exp $
#

DISTNAME=	pytemplate-1.5.1
PKGNAME=	py-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel python
MASTER_SITES=	http://www.bulot.org/downloads/

MAINTAINER=	imil@gcu.info
HOMEPAGE=	http://bulot.org/wiki/doku.php?id=projects:python:pytemplate
COMMENT=	Pytemplate gives python developpers a starting framework

PKG_DESTDIR_SUPPORT=		user-destdir

USE_LANGUAGES=			# none

REPLACE_PYTHON=			${WRKSRC}/*.py

EGDIR=				${PREFIX}/share/examples/${PYPKGPREFIX}-pytemplate

PLIST_SUBST+=		PYPKGPREFIX=${PYPKGPREFIX}
PRINT_PLIST_AWK+=	{ gsub(/${PYPKGPREFIX:S|/|\\/|g}/, "$${PYPKGPREFIX}") }

INSTALLATION_DIRS+=		${EGDIR}

post-install:
	${INSTALL_DATA} ${WRKSRC}/example.py ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/daemonexample.py ${DESTDIR}${EGDIR}
	${INSTALL_DATA} ${WRKSRC}/threadexample.py ${DESTDIR}${EGDIR}

.include "../../lang/python/application.mk"
.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
