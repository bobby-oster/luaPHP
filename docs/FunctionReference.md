Function List
=============

File System Related Extensions
------------------------------

### Directories ###

#### scandir ####
List files and directories inside the specified path
> *table* `scandir(` *string* `directory` `)`

### Filesystem ###

#### file_exists ####
Checks whether a file or directory exists
> *boolean* `file_exists(` *string* `filename` `)`

Text Processing
---------------

### Strings ###

#### explode ####
Split a string by string
> *table* `explode(` *string* `delimiter`, string `string` `)`

#### trim ####
Strip whitespace (or other characters) from the beginning and end of a string
> *string* `trim(` *string* `str` `)`

Variable and Type Related Extensions
------------------------------------

### Variable handling ###

#### is_numeric ####
Finds whether a variable is a number or a numeric string
> *boolean* `is_numeric(` *mixed* `var` `)`

#### print_r ####
Prints human-readable information about a variable
> *nil* `print_r(` *mixed* `expression` `)`