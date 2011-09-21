# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.
export PATH HOME TERM


export TERM=xterm-color
export EDITOR=vim

#export PKG_PATH=ftp://ftp.eu.openbsd.org/pub/OpenBSD/snapshots/packages/i386/
export PKG_PATH=http://ftp.nluug.nl/pub/OpenBSD/snapshots/packages/i386/
export CVSROOT=anoncvs@anoncvs.eu.openbsd.org:/cvs


# Start aucat socket
pgrep -x aucat > /dev/null || aucat -l -v 103
# Start ssh-agent
pgrep -x ssh-agent >  /dev/null || eval `ssh-agent`
# Start fetchmail
#if [ -x /usr/local/bin/fetchmail ]; then
#    /usr/local/bin/fetchmail -d 300
#fi


