--TEST--
Check if str_reverse is loaded
--SKIPIF--
<?php
if (!extension_loaded('str_reverse')) {
	echo 'skip';
}
?>
--FILE--
<?php
echo 'The extension "str_reverse" is available';
?>
--EXPECT--
The extension "str_reverse" is available
