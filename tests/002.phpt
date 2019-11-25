--TEST--
str_reverse_test1() Basic test
--SKIPIF--
<?php
if (!extension_loaded('str_reverse')) {
	echo 'skip';
}
?>
--FILE--
<?php
$ret = str_reverse_test1();

var_dump($ret);
?>
--EXPECT--
The extension str_reverse is loaded and working!
NULL
