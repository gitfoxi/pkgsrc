#!/bin/sh
#
# $NetBSD: linux-mkpwd.sh,v 1.1.1.1 2002/04/04 10:07:58 tron Exp $

SRCDIR=/etc
DESTDIR=@@EMULDIR@@/etc

umask 22
cd $DESTDIR
cp $SRCDIR/passwd .
sed s/^wheel:/root:/ <$SRCDIR/group >group

umask 77
awk -F: '{print($1":"$2":0:0:10000::::")}' <$SRCDIR/master.passwd >shadow
sed s/^wheel:/root:/ <$SRCDIR/group |
awk -F: '{print($1":*:root:root")}' >gshadow

exit 0