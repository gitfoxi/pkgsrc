# $NetBSD: Makefile,v 1.22 2012/03/03 00:12:40 wiz Exp $
#

DISTNAME=	gtick-0.3.10
PKGREVISION=	11
CATEGORIES=	audio
MASTER_SITES=	http://www.antcom.de/gtick/download/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.antcom.de/gtick/
COMMENT=	Metronome application using GTK2+

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		pkg-config

LIBS+=			${LIBOSSAUDIO}

SUBST_CLASSES+=		oss
SUBST_MESSAGE.oss=	Fixing paths to OSS devices.
SUBST_STAGE.oss=	pre-configure
SUBST_FILES.oss=	src/globals.h
SUBST_SED.oss=		-e 's|/dev/dsp|${DEVOSSAUDIO}|g'

SUBST_CLASSES+=		header
SUBST_MESSAGE.header=	Fixing include dependency.
SUBST_STAGE.header=	pre-configure
SUBST_FILES.header=	src/dsp.c
SUBST_SED.header=	-e 's/FreeBSD__)/& || defined(__NetBSD__)/g'

.include "../../audio/libsndfile/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/oss.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
