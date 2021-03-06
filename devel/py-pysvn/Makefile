# $NetBSD: Makefile,v 1.11 2012/04/27 12:31:46 obache Exp $
#

VERS=			1.7.5
DISTNAME=		pysvn-${VERS}
PKGNAME=		${PYPKGPREFIX}-pysvn-${VERS}
PKGREVISION=		1
CATEGORIES=		devel
MASTER_SITES=	http://pysvn.barrys-emacs.org/source_kits/

MAINTAINER=		helgoman@users.sourceforge.net
HOMEPAGE=		http://pysvn.tigris.org/
COMMENT=		Python interface to Subversion
LICENSE=		apache-1.1

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=		${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

USE_LANGUAGES=		c c++
USE_TOOLS=			gmake

PSVNSRC=			Source
PYSETUP=			setup.py
PYSETUPSUBDIR=		${PSVNSRC}/pysvn
PY_PATCHPLIST=		yes
TESTDIR=			Tests

BUILD_DIRS=		${PSVNSRC}
INSTALLATION_DIRS=	${PYSITELIB}/pysvn

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "DragonFly"
BUILDLINK_TRANSFORM+=	rm:-lresolv
.endif

.include "../../lang/python/pyversion.mk"

do-configure:
.if ${PYVERSSUFFIX} == "2.5"
	cd ${WRKSRC}/${PSVNSRC} && ${PYTHONBIN} ${PYSETUP} backport
.endif
	cd ${WRKSRC}/${PSVNSRC} && \
	${PYTHONBIN} ${PYSETUP} configure --fixed-module-name \
		--svn-root-dir=${BUILDLINK_PREFIX.subversion-base}

do-install:
	${INSTALL_DATA} \
	${WRKSRC}/${PYSETUPSUBDIR}/*.py \
	${WRKSRC}/${PYSETUPSUBDIR}/*.so \
	${DESTDIR}${PREFIX}/${PYSITELIB}/pysvn

# XXX expect one difference due to the patched Python path
do-test:
	cd ${WRKSRC}/${TESTDIR} && ${MAKE}

.include "../../devel/subversion-base/buildlink3.mk"
.include "../../lang/python/extension.mk"
.include "../../mk/krb5.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
