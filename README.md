# Run Test-Suite
```sh
$ cd perlTestsuite
$ prove -lr tests/
```

# File-Structure
```
.
├── README.md
├── lib
│   └── PKG
│       └── HelloWorld.pm
└── tests
    └── HelloWorldTest.t
```


# How to setup a package/module in Perl

```perl
// lib/pkg/fileName.pm
package [PACKAGE_NAME]::[NAME_OF_THE_FILE]

use strict;
use warnings;

use base 'Exporter';
our @EXPORT_OK = qw([FUNCTION, ...]);

sub [FUNCTION] {
  ...
}

1;
```

# How to write a test in Perl

```perl
use strict;
use warnings;
use Test::More tests => 2;

use [PACKAGE_NAME]::[NAME_OF_THE_FILE] qw([FUNCTION]);

BEGIN {
  # Test 1
  use_ok '[PACKAGE_NAME]::[NAME_OF_THE_FILE]';
}

subtest "[TEST_NAME]", sub {
  # Test 2
  plan tests => 1;
  is(EXPERIMENTAL_VALUE, EXPECTED_VALUE, OPTIONAL_MESSAGE);
  # or
  isnt(EXPERIMENTAL_VALUE, EXPECTED_VALUE, OPTIONAL_MESSAGE);
};

```

# other Infos
```perl
use diagnostics;              # this gives your more debugging information
use warnings;                 # this warns you of bad practices
use strict;                   # this prevents silly errors
use Test::More qw( no_plan )  # for the is() and isnt() functions

# Add tests here with is() and isnt();
is(EXPERIMENTAL_VALUE, EXPECTED_VALUE, OPTIONAL_MESSAGE);
isnt(EXPERIMENTAL_VALUE, EXPECTED_VALUE, OPTIONAL_MESSAGE);
```

# other links
- [Testing](https://perlmaven.com/testing)
- [Test::More](https://perldoc.perl.org/Test/More.html)
