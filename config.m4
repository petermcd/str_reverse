dnl config.m4 for extension str_reverse

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use 'with':

dnl PHP_ARG_WITH([str_reverse],
dnl   [for str_reverse support],
dnl   [AS_HELP_STRING([--with-str_reverse],
dnl     [Include str_reverse support])])

dnl Otherwise use 'enable':

PHP_ARG_ENABLE([str_reverse],
  [whether to enable str_reverse support],
  [AS_HELP_STRING([--enable-str_reverse],
    [Enable str_reverse support])],
  [no])

if test "$PHP_STR_REVERSE" != "no"; then
  dnl Write more examples of tests here...

  dnl Remove this code block if the library does not support pkg-config.
  dnl PKG_CHECK_MODULES([LIBFOO], [foo])
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBS, STR_REVERSE_SHARED_LIBADD)

  dnl If you need to check for a particular library version using PKG_CHECK_MODULES,
  dnl you can use comparison operators. For example:
  dnl PKG_CHECK_MODULES([LIBFOO], [foo >= 1.2.3])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo < 3.4])
  dnl PKG_CHECK_MODULES([LIBFOO], [foo = 1.2.3])

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-str_reverse -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/str_reverse.h"  # you most likely want to change this
  dnl if test -r $PHP_STR_REVERSE/$SEARCH_FOR; then # path given as parameter
  dnl   STR_REVERSE_DIR=$PHP_STR_REVERSE
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for str_reverse files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       STR_REVERSE_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$STR_REVERSE_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the str_reverse distribution])
  dnl fi

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-str_reverse -> add include path
  dnl PHP_ADD_INCLUDE($STR_REVERSE_DIR/include)

  dnl Remove this code block if the library supports pkg-config.
  dnl --with-str_reverse -> check for lib and symbol presence
  dnl LIBNAME=STR_REVERSE # you may want to change this
  dnl LIBSYMBOL=STR_REVERSE # you most likely want to change this

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   AC_DEFINE(HAVE_STR_REVERSE_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your str_reverse library.])
  dnl ], [
  dnl   $LIBFOO_LIBS
  dnl ])

  dnl If you need to check for a particular library function (e.g. a conditional
  dnl or version-dependent feature) and you are not using pkg-config:
  dnl PHP_CHECK_LIBRARY($LIBNAME, $LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $STR_REVERSE_DIR/$PHP_LIBDIR, STR_REVERSE_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_STR_REVERSE_FEATURE, 1, [ ])
  dnl ],[
  dnl   AC_MSG_ERROR([FEATURE not supported by your str_reverse library.])
  dnl ],[
  dnl   -L$STR_REVERSE_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(STR_REVERSE_SHARED_LIBADD)

  dnl In case of no dependencies
  AC_DEFINE(HAVE_STR_REVERSE, 1, [ Have str_reverse support ])

  PHP_NEW_EXTENSION(str_reverse, str_reverse.c, $ext_shared)
fi
