# $Id: compile.t,v 1.1.1.1 2004/09/01 04:16:03 comdog Exp $

use Test::More tests => 1;

my $module =  'Net::MAC::Vendor';

print "bail out! Could not compile $module.\n"
	unless use_ok( $module );