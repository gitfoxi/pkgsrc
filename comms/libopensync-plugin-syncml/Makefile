# $NetBSD: Makefile,v 1.8 2012/06/14 07:45:11 sbd Exp $
#

DISTNAME=	libopensync-plugin-syncml-0.22
PKGREVISION=	6
CATEGORIES=	comms
MASTER_SITES=	http://www.opensync.org/download/releases/0.22/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	dillo@NetBSD.org
HOMEPAGE=	http://www.opensync.org/download/releases/0.22/
COMMENT=	Platform independent synchronization framework, SyncML plugin

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c
USE_LIBTOOL=	yes
GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--disable-http

.include "../../comms/libopensync/buildlink3.mk"
.include "../../comms/libsyncml/buildlink3.mk"
.include "../../comms/openobex/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
# XXX libsoup (http)
.include "../../mk/bsd.pkg.mk"
