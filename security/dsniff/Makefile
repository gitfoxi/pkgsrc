# $NetBSD: Makefile,v 1.35 2012/03/03 00:13:51 wiz Exp $

PKG_DESTDIR_SUPPORT=	user-destdir

.include "Makefile.common"

PKGREVISION=	10
COMMENT=	Password sniffer (webspy)

DEPENDS+=	dsniff-nox11-[0-9]*:../../security/dsniff-nox11

BUILD_TARGET=	libmissing.a webspy

INSTALLATION_DIRS+=	sbin ${PKGMANDIR}/man8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/webspy ${DESTDIR}${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/webspy.8 ${DESTDIR}${PREFIX}/${PKGMANDIR}/man8

BUILDLINK_DEPMETHOD.libXt?=	build

.include "../../x11/libSM/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libXmu/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
