# $NetBSD: Makefile,v 1.1 2012/08/08 12:21:11 sno Exp $

DISTNAME=	Dist-Zilla-Plugin-PodWeaver-3.101641
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Dist/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Dist-Zilla-Plugin-PodWeaver/
COMMENT=	Weave your Pod together from configuration and Dist::Zilla
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Dist-Zilla>=4:../../devel/p5-Dist-Zilla
DEPENDS+=	p5-List-MoreUtils-[0-9]*:../../devel/p5-List-MoreUtils
DEPENDS+=	p5-Moose-[0-9]*:../../devel/p5-Moose
DEPENDS+=	p5-Moose-Autobox-[0-9]*:../../devel/p5-Moose-Autobox
DEPENDS+=	p5-PPI-[0-9]*:../../devel/p5-PPI
DEPENDS+=	p5-Pod-Elemental-[0-9]*:../../textproc/p5-Pod-Elemental
DEPENDS+=	p5-Pod-Elemental-PerlMunger-[0-9]*:../../textproc/p5-Pod-Elemental-PerlMunger
DEPENDS+=	p5-Pod-Weaver>=3.100710:../../textproc/p5-Pod-Weaver
DEPENDS+=	p5-namespace-autoclean-[0-9]*:../../devel/p5-namespace-autoclean

BUILD_DEPENDS+=	p5-File-Find-Rule-[0-9]*:../../devel/p5-File-Find-Rule
BUILD_DEPENDS+=	{perl>=5.10.1,p5-Test-Simple-[0-9]*}:../../devel/p5-Test-Simple

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

PERL5_PACKLIST=		auto/Dist/Zilla/Plugin/PodWeaver/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
