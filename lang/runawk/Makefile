# $NetBSD: Makefile,v 1.10 2012/08/09 17:09:17 marino Exp $
#

DISTNAME=	runawk-1.4.1
CATEGORIES=	lang devel
PKGREVISION=	1
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=runawk/} \
		http://mova.org/~cheusov/pub/runawk/

MAINTAINER=	cheusov@NetBSD.org
HOMEPAGE=	http://sourceforge.net/projects/runawk
COMMENT=	AWK wrapper that provides support for modules

BUILD_DEPENDS+=		mk-configure>=0.23.0:../../devel/mk-configure

LICENSE=		mit

PKG_DESTDIR_SUPPORT=	user-destdir

USE_LANGUAGES=		c
USE_TOOLS+=		pod2man
TEST_TARGET=		test

SUBST_CLASSES+=		runawk
SUBST_SED.runawk=	-e "s,/usr/bin/env runawk,${PREFIX}/bin/runawk,"
SUBST_FILES.runawk=	a_getopt/alt_getopt
SUBST_STAGE.runawk=	pre-build
SUBST_MESSAGE.runawk=	Fixing path to runawk.

EGDIR=		${PREFIX}/share/examples/runawk

MAKE_ENV+=	MANDIR=${PREFIX}/${PKGMANDIR}
MAKE_ENV+=	EGDIR=${EGDIR}
MAKE_ENV+=	SUBPRJ_DFLT='runawk modules a_getopt doc examples'
MAKE_ENV+=	AWK_PROG=${AWK:Q}

.include "../../devel/mk-configure/mk-c.mk"
.include "../../mk/bsd.pkg.mk"
