# $NetBSD: Makefile,v 1.28 2012/06/14 07:45:22 sbd Exp $
#

DISTNAME=		scli-0.3.1
PKGREVISION=		5
CATEGORIES=		net
MASTER_SITES=		ftp://ftp.ibr.cs.tu-bs.de/local/scli/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.ibr.cs.tu-bs.de/projects/scli/
COMMENT=		SNMP command line interface

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_TOOLS+=		pkg-config gmake

USE_GNU_READLINE=	yes # history_list
BUILDLINK_API_DEPENDS.readline+=	readline>=4.0

INFO_FILES=		yes

.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/ncurses/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../net/gnet/buildlink3.mk"
.include "../../net/gsnmp/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
