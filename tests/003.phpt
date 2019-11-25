--TEST--
str_reverse_test2() Basic test
--SKIPIF--
<?php
if (!extension_loaded('str_reverse')) {
	echo 'skip';
}
?>
--FILE--
<?php
var_dump(str_reverse_test2());
var_dump(str_reverse_test2('PHP'));
?>
--EXPECT--
string(11) "Hello World"
string(9) "Hello PHP"
