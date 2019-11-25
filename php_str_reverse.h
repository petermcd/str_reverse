/* str_reverse extension for PHP */

#ifndef PHP_STR_REVERSE_H
# define PHP_STR_REVERSE_H

extern zend_module_entry str_reverse_module_entry;
# define phpext_str_reverse_ptr &str_reverse_module_entry

# define PHP_STR_REVERSE_VERSION "0.1.0"

# if defined(ZTS) && defined(COMPILE_DL_STR_REVERSE)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_STR_REVERSE_H */
