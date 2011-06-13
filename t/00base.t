use strict;
use warnings;

use Test::More tests => 13;

is(system("blib/script/tidesktopref > /dev/null"), 0, 'top page');
is(system("blib/script/tidesktopref Titanium > /dev/null"), 0, 'exact path');
is(system("blib/script/tidesktopref Ti > /dev/null"), 0, 'expand');
is(system("blib/script/tidesktopref Ti.API > /dev/null"), 0, 'expand');
is(system("blib/script/tidesktopref Titanium.API > /dev/null"), 0, 'module');
is(system("blib/script/tidesktopref Titanium.API.Component > /dev/null"), 0, 'object');
is(system("blib/script/tidesktopref Titanium.API.Component.getName > /dev/null"), 0, 'method');
is(system("blib/script/tidesktopref Titanium.ALL > /dev/null"), 0, 'property');
is(system("blib/script/tidesktopref Titanium-module > /dev/null"), 0, 'module');
is(system("blib/script/tidesktopref Titanium.API.Component-object > /dev/null"), 0, 'object');
is(system("blib/script/tidesktopref Titanium.API.Component.getName-method > /dev/null"), 0, 'method');
is(system("blib/script/tidesktopref Titanium.ALL-property > /dev/null"), 0, 'property');
is(system("blib/script/tidesktopref hokhokhok > /dev/null 2>&1"), 256, 'not found');


