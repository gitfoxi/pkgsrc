# $NetBSD: Makefile,v 1.10 2009/02/09 23:37:17 joerg Exp $

DISTNAME=	rzip-2.1
CATEGORIES=	archivers
MASTER_SITES=	http://rzip.samba.org/ftp/rzip/

MAINTAINER=	carton@Ivy.NET
HOMEPAGE=	http://rzip.samba.org/
COMMENT=	Create or extract .rz files, like gzip but smaller

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
INSTALL_MAKE_FLAGS+=	INSTALL_BIN=${DESTDIR}${PREFIX}/bin \
			INSTALL_MAN=${DESTDIR}${PREFIX}/${PKGMANDIR}

post-install:
	${LN} -f ${DESTDIR}${PREFIX}/bin/rzip ${DESTDIR}${PREFIX}/bin/runzip
	${RM} -f ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/runzip.1
	${LN} -s rzip.1 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/runzip.1

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "Interix"
.  include "../../devel/libiberty/application.mk" # need asprintf(3)
.endif

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
