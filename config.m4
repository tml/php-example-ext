dnl $Id$
dnl config.m4 for extension t

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(t, for t support,
dnl Make sure that the comment is aligned:
dnl [  --with-t             Include t support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(t, whether to enable t support,
dnl Make sure that the comment is aligned:
dnl [  --enable-t           Enable t support])

if test "$PHP_T" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-t -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/t.h"  # you most likely want to change this
  dnl if test -r $PHP_T/$SEARCH_FOR; then # path given as parameter
  dnl   T_DIR=$PHP_T
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for t files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       T_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$T_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the t distribution])
  dnl fi

  dnl # --with-t -> add include path
  dnl PHP_ADD_INCLUDE($T_DIR/include)

  dnl # --with-t -> check for lib and symbol presence
  dnl LIBNAME=t # you may want to change this
  dnl LIBSYMBOL=t # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $T_DIR/lib, T_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_TLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong t lib version or lib not found])
  dnl ],[
  dnl   -L$T_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(T_SHARED_LIBADD)

  PHP_NEW_EXTENSION(t, t.c, $ext_shared)
fi
