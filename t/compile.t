# $Id: compile.t 1334 2004-09-01 04:16:02Z comdog $

use Test::More tests => 1;

my $module =  'Net::MAC::Vendor';

print "bail out! Could not compile $module.\n"
	unless use_ok( $module );