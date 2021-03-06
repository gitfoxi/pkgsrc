$NetBSD: patch-lib_fflush.c,v 1.1 2012/03/14 23:20:10 joerg Exp $

--- lib/fflush.c.orig	2011-03-06 11:54:27.000000000 +0000
+++ lib/fflush.c
@@ -91,7 +91,7 @@ static inline void
 update_fpos_cache (FILE *fp, off_t pos)
 {
 #if defined __sferror || defined __DragonFly__ /* FreeBSD, NetBSD, OpenBSD, DragonFly, MacOS X, Cygwin */
-# if defined __CYGWIN__
+# if defined(__CYGWIN__) || defined(__NetBSD__)
   /* fp_->_offset is typed as an integer.  */
   fp_->_offset = pos;
 # else
