# $NetBSD: Makefile,v 1.2 2012/05/30 15:52:08 dholland Exp $
#

DISTNAME=	pylast-0.5.11
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/py//}
CATEGORIES=	audio python
MASTER_SITES=	http://pypi.python.org/packages/source/p/pylast/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://code.google.com/p/pylast/
COMMENT=	Python interface to Last.fm
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=			# none
PYTHON_VERSIONS_INCOMPATIBLE=	25
PYTHON_VERSIONS_INCLUDE_3X=	yes

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
