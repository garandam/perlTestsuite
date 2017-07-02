use diagnostics;
use strict;
use warnings;

# Counter for all tests, what is expected
use Test::More tests => 3;

use PKG::HelloWorld qw(getHelloWorld);

BEGIN {
  # TEST 1
  use_ok 'Test::More';
  # TEST 2
  use_ok 'PKG::HelloWorld';
}

subtest "test_getHelloWorld", sub {
  # TEST 3
  plan tests => 1;
  is( getHelloWorld(), "Hello World", "function getHelloWorld()");
};