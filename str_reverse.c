/* str_reverse extension for PHP */

#ifdef HAVE_CONFIG_H
# include "config.h"
#endif

#include "php.h"
#include "ext/standard/info.h"
#include "php_str_reverse.h"

/* For compatibility with older PHP versions */
#ifndef ZEND_PARSE_PARAMETERS_NONE
#define ZEND_PARSE_PARAMETERS_NONE() \
	ZEND_PARSE_PARAMETERS_START(1, 1) \
	ZEND_PARSE_PARAMETERS_END()
#endif


char *strrev(char *str)
{
    if (!str || ! *str)
        return str;

    int i = strlen(str) - 1, j = 0;

    char ch;
    while (i > j)
    {
        ch = str[i];
        str[i] = str[j];
        str[j] = ch;
        i--;
        j++;
    }
    return str;
}

/* {{{ string str_reverse_test2( [ string $var ] )
 */
PHP_FUNCTION(str_reverse)
{
	zend_string *input_var;
	zend_long input_var_len;
        zend_string *retval;

	ZEND_PARSE_PARAMETERS_START(1, 1)
		Z_PARAM_STRING(input_var, input_var_len)
	ZEND_PARSE_PARAMETERS_END();

	retval = strpprintf(0, "%s", strrev(input_var));

	RETURN_STR(retval);
}
/* }}}*/

/* {{{ PHP_RINIT_FUNCTION
 */
PHP_RINIT_FUNCTION(str_reverse)
{
#if defined(ZTS) && defined(COMPILE_DL_STR_REVERSE)
	ZEND_TSRMLS_CACHE_UPDATE();
#endif

	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MINFO_FUNCTION
 */
PHP_MINFO_FUNCTION(str_reverse)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "str_reverse support", "enabled");
	php_info_print_table_end();
}
/* }}} */

/* {{{ arginfo
 */

ZEND_BEGIN_ARG_INFO(arginfo_str_reverse, 0)
	ZEND_ARG_INFO(0, str)
ZEND_END_ARG_INFO()
/* }}} */

/* {{{ str_reverse_functions[]
 */
static const zend_function_entry str_reverse_functions[] = {
	PHP_FE(str_reverse,		arginfo_str_reverse)
	PHP_FE_END
};
/* }}} */

/* {{{ str_reverse_module_entry
 */
zend_module_entry str_reverse_module_entry = {
	STANDARD_MODULE_HEADER,
	"str_reverse",              /* Extension name */
	str_reverse_functions,      /* zend_function_entry */
	NULL,                       /* PHP_MINIT - Module initialization */
	NULL,                       /* PHP_MSHUTDOWN - Module shutdown */
	PHP_RINIT(str_reverse),     /* PHP_RINIT - Request initialization */
	NULL,                       /* PHP_RSHUTDOWN - Request shutdown */
	PHP_MINFO(str_reverse),     /* PHP_MINFO - Module info */
	PHP_STR_REVERSE_VERSION,    /* Version */
	STANDARD_MODULE_PROPERTIES
};
/* }}} */

#ifdef COMPILE_DL_STR_REVERSE
# ifdef ZTS
ZEND_TSRMLS_CACHE_DEFINE()
# endif
ZEND_GET_MODULE(str_reverse)
#endif