# $Id: fetch_oui.t,v 1.1.1.1 2004/09/01 04:16:03 comdog Exp $

use Test::More tests => 7;

use_ok( 'Net::MAC::Vendor' );

my @oui = qw( 00-0D-93 );

Net::MAC::Vendor::fetch_oui( $mac );

my $lines =
	[
	'Calrec Audio Ltd',
	'Nutclough Mill',
	'Hebden Bridge West Yorkshire HX7 8EZ',
	'UNITED KINGDOM',
	]
# # # # # # # # # # # # # # # # # # #
          
foreach my $oui ( @oui )
	{
	my $parsed = Net::MAC::Vendor::fetch_oui( $oui );

	foreach my $i ( 0 .. $#$parsed )
		{
		is( $parsed->[$i], $lines->[$i], "Line $i matches" );
		}
	}
