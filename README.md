# PHP String Reverse

The repository is provided as is however provides PHP with the functionality to reverse a string.

This extension was created to help learn how PHP extensions work. 

## Installation

```bash
phpize
make
make install
```

Once carried out you will need to edit the php.ini file with the following contents:

```
extension=str_replace.so
```

## Usage

The functuon is very simple and can be used in the following manner:

```php
<?php
echo str_replace("PHP-String_Reverse");
?>
```
