package PKG::HelloWorld;

use diagnostics;
use strict;
use warnings;

use base 'Exporter';
our @EXPORT_OK = qw(getHelloWorld);

sub getHelloWorld {

  return "Hello World";

}

1;