# $NetBSD: Makefile,v 1.7 2012/06/14 07:44:21 sbd Exp $
#

GST_PLUGINS0.10_NAME=	mms
GST_PLUGINS0.10_FLAGS=	libmms
GST_PLUGINS0.10_DIRS=	ext/libmms
PKGREVISION=		1

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../multimedia/gst-plugins0.10-bad/Makefile.common"
PKGREVISION=1

BUILDLINK_API_DEPENDS.libmms+=	libmms>=0.4
.include "../../net/libmms/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
