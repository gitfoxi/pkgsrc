# $NetBSD: glib2-fixes.mk,v 1.1 2012/05/06 21:12:04 dholland Exp $

# Fix build with the latest glib2.

SUBST_CLASSES+=		glib2
SUBST_MESSAGE.glib2=	Fixing glib2 includes.
SUBST_STAGE.glib2=	pre-build

SUBST_FILES.glib2+=	src/2geom/matrix.h
SUBST_FILES.glib2+=	src/application/application.h
SUBST_FILES.glib2+=	src/application/editor.h
SUBST_FILES.glib2+=	src/attributes.h
SUBST_FILES.glib2+=	src/color-profile-fns.h
SUBST_FILES.glib2+=	src/color-profile.h
SUBST_FILES.glib2+=	src/color-rgba.h
SUBST_FILES.glib2+=	src/conn-avoid-ref.h
SUBST_FILES.glib2+=	src/debug/simple-event.h
SUBST_FILES.glib2+=	src/desktop-style.h
SUBST_FILES.glib2+=	src/dir-util.h
SUBST_FILES.glib2+=	src/display/canvas-bpath.h
SUBST_FILES.glib2+=	src/display/curve.h
SUBST_FILES.glib2+=	src/display/gnome-canvas-acetate.h
SUBST_FILES.glib2+=	src/display/nr-arena.h
SUBST_FILES.glib2+=	src/display/nr-plain-stuff.h
SUBST_FILES.glib2+=	src/display/sodipodi-ctrlrect.h
SUBST_FILES.glib2+=	src/display/sp-canvas.h
SUBST_FILES.glib2+=	src/draw-anchor.h
SUBST_FILES.glib2+=	src/extension/internal/pdfinput/svg-builder.h
SUBST_FILES.glib2+=	src/extract-uri.h
SUBST_FILES.glib2+=	src/file.h
SUBST_FILES.glib2+=	src/filters/blend-fns.h
SUBST_FILES.glib2+=	src/filters/colormatrix-fns.h
SUBST_FILES.glib2+=	src/filters/componenttransfer-fns.h
SUBST_FILES.glib2+=	src/filters/composite-fns.h
SUBST_FILES.glib2+=	src/filters/convolvematrix-fns.h
SUBST_FILES.glib2+=	src/filters/diffuselighting-fns.h
SUBST_FILES.glib2+=	src/filters/displacementmap-fns.h
SUBST_FILES.glib2+=	src/filters/flood-fns.h
SUBST_FILES.glib2+=	src/filters/image-fns.h
SUBST_FILES.glib2+=	src/filters/merge-fns.h
SUBST_FILES.glib2+=	src/filters/morphology-fns.h
SUBST_FILES.glib2+=	src/filters/offset-fns.h
SUBST_FILES.glib2+=	src/filters/specularlighting-fns.h
SUBST_FILES.glib2+=	src/filters/tile-fns.h
SUBST_FILES.glib2+=	src/filters/turbulence-fns.h
SUBST_FILES.glib2+=	src/gc-anchored.h
SUBST_FILES.glib2+=	src/gc-core.h
SUBST_FILES.glib2+=	src/gradient-drag.h
SUBST_FILES.glib2+=	src/help.h
SUBST_FILES.glib2+=	src/helper/gnome-utils.h
SUBST_FILES.glib2+=	src/helper/pixbuf-ops.h
SUBST_FILES.glib2+=	src/helper/png-write.h
SUBST_FILES.glib2+=	src/helper/stlport.h
SUBST_FILES.glib2+=	src/helper/stock-items.h
SUBST_FILES.glib2+=	src/helper/unit-menu.h
SUBST_FILES.glib2+=	src/helper/units.h
SUBST_FILES.glib2+=	src/inkscape.h
SUBST_FILES.glib2+=	src/io/inkjar.h
SUBST_FILES.glib2+=	src/io/sys.h
SUBST_FILES.glib2+=	src/knot-holder-entity.h
SUBST_FILES.glib2+=	src/knotholder.h
SUBST_FILES.glib2+=	src/libcroco/cr-libxml-node-iface.h
SUBST_FILES.glib2+=	src/libcroco/cr-node-iface.h
SUBST_FILES.glib2+=	src/libgdl/gdl-stock.h
SUBST_FILES.glib2+=	src/libnr/in-svg-plane-test.h
SUBST_FILES.glib2+=	src/libnr/nr-i-coord.h
SUBST_FILES.glib2+=	src/libnr/nr-matrix.h
SUBST_FILES.glib2+=	src/libnr/nr-object.h
SUBST_FILES.glib2+=	src/libnr/nr-point-fns-test.h
SUBST_FILES.glib2+=	src/libnr/nr-rotate-fns-test.h
SUBST_FILES.glib2+=	src/libnrtype/nr-type-primitives.h
SUBST_FILES.glib2+=	src/live_effects/parameter/array.h
SUBST_FILES.glib2+=	src/live_effects/parameter/bool.h
SUBST_FILES.glib2+=	src/live_effects/parameter/enum.h
SUBST_FILES.glib2+=	src/live_effects/parameter/path.h
SUBST_FILES.glib2+=	src/live_effects/parameter/point.h
SUBST_FILES.glib2+=	src/live_effects/parameter/text.h
SUBST_FILES.glib2+=	src/live_effects/parameter/vector.h
SUBST_FILES.glib2+=	src/main-cmdlineact.h
SUBST_FILES.glib2+=	src/modifier-fns.h
SUBST_FILES.glib2+=	src/object-hierarchy.h
SUBST_FILES.glib2+=	src/removeoverlap.h
SUBST_FILES.glib2+=	src/sp-conn-end-pair.h
SUBST_FILES.glib2+=	src/sp-conn-end.h
SUBST_FILES.glib2+=	src/sp-filter-fns.h
SUBST_FILES.glib2+=	src/sp-gaussian-blur-fns.h
SUBST_FILES.glib2+=	src/sp-gradient-fns.h
SUBST_FILES.glib2+=	src/sp-gradient-vector.h
SUBST_FILES.glib2+=	src/sp-linear-gradient-fns.h
SUBST_FILES.glib2+=	src/sp-metrics.h
SUBST_FILES.glib2+=	src/sp-radial-gradient.h
SUBST_FILES.glib2+=	src/sp-stop.h
SUBST_FILES.glib2+=	src/sp-text.h
SUBST_FILES.glib2+=	src/sp-textpath.h
SUBST_FILES.glib2+=	src/sp-tspan.h
SUBST_FILES.glib2+=	src/svg/css-ostringstream.h
SUBST_FILES.glib2+=	src/svg/stringstream.h
SUBST_FILES.glib2+=	src/svg/svg-color.h
SUBST_FILES.glib2+=	src/svg/svg-length.h
SUBST_FILES.glib2+=	src/svg/svg-path-geom-test.h
SUBST_FILES.glib2+=	src/svg/svg.h
SUBST_FILES.glib2+=	src/text-editing.h
SUBST_FILES.glib2+=	src/text-tag-attributes.h
SUBST_FILES.glib2+=	src/ui/dialog/desktop-tracker.h
SUBST_FILES.glib2+=	src/ui/dialog/dialog-manager.h
SUBST_FILES.glib2+=	src/unclump.h
SUBST_FILES.glib2+=	src/uri.h
SUBST_FILES.glib2+=	src/util/glib-list-iterators.h
SUBST_FILES.glib2+=	src/version.h
SUBST_FILES.glib2+=	src/widgets/sp-color-icc-selector.h
SUBST_FILES.glib2+=	src/widgets/sp-color-scales.h
SUBST_FILES.glib2+=	src/widgets/sp-color-wheel-selector.h
SUBST_FILES.glib2+=	src/widgets/spinbutton-events.h
SUBST_FILES.glib2+=	src/widgets/spw-utilities.h
SUBST_FILES.glib2+=	src/xml/attribute-record.h
SUBST_FILES.glib2+=	src/xml/comment-node.h
SUBST_FILES.glib2+=	src/xml/event.h
SUBST_FILES.glib2+=	src/xml/node-event-vector.h
SUBST_FILES.glib2+=	src/xml/node-observer.h
SUBST_FILES.glib2+=	src/xml/node.h
SUBST_FILES.glib2+=	src/xml/pi-node.h
SUBST_FILES.glib2+=	src/xml/rebase-hrefs.h
SUBST_FILES.glib2+=	src/xml/repr.h
SUBST_FILES.glib2+=	src/xml/text-node.h

SUBST_SED.glib2+=	-e '/\#include/s,"glib/glist.h","glib.h",'
SUBST_SED.glib2+=	-e '/\#include/s,"glib/gslist.h","glib.h",'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/garray.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gdir.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gfileutils.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/glist.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gmacros.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gmain.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gmem.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gmessages.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gquark.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gslist.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gstrfuncs.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gstring.h>,<glib.h>,'
SUBST_SED.glib2+=	-e '/\#include/s,<glib/gtypes.h>,<glib.h>,'