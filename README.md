# perl-local-lib-path

perl-local-lib-path is a helper for vim path.

It automatically sets to vim path your project local lib directories like 'extlib' and 'local/perl5/lib' installed by carton and local::lib.

For example, it enables you to move between files by typing 'gf' on cursor with module name.

```perl
use Class::Accessor::*Lite;

use parent qw(Hatena*::Mackerel::Model);
```
* is a cursor position and type 'gf'.

## Usage

You can set your paths via g:perl_local_lib_path. perl-local-lib-paths has 'lib', 'extlib', 'local/lib/perl5', 'local/lib/perl5/${archname}'.

Example

```vim
g:perl_local_lib_path = "vendor/lib"
autocmd FileType perl PerlLocalLibPath
```
