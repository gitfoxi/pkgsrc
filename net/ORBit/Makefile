# $NetBSD: Makefile,v 1.122 2011/04/22 13:42:01 obache Exp $

DISTNAME=	ORBit-0.5.17
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/ORBit/0.5/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/
COMMENT=	High-performance CORBA ORB with support for the C language

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		bison flex gmake xgettext
USE_LIBTOOL=		YES
PTHREAD_AUTO_VARS=	YES

GNU_CONFIGURE=		YES
CONFIGURE_ENV+=	LIBWRAP_PATH=${BUILDLINK_PREFIX.tcp_wrappers}/lib/libwrap.a
CONFIGURE_ENV+=	LIB_WRAP="-lwrap"

PKGCONFIG_OVERRIDE+=	ORBit.pc.in
PKGCONFIG_OVERRIDE+=	libIDL/libIDL.pc.in

INFO_FILES=		# PLIST

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} != "NetBSD" && ${OPSYS} != "Linux"
DEPENDS+=		gindent-[0-9]*:../../devel/gindent
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib/buildlink3.mk"
.include "../../security/tcp_wrappers/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"

.if ${PTHREAD_TYPE} != "native"
CPPFLAGS+=		-D_POSIX_THREAD_SYSCALL_SOFT=1
.endif

.include "../../mk/bsd.pkg.mk"
