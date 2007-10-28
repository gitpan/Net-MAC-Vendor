# $Id: Makefile.PL 2336 2007-10-28 01:37:07Z comdog $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Net::MAC::Vendor',
	'ABSTRACT'     => 'look up the network interface vendor by MAC',
	'VERSION_FROM' => 'lib/Vendor.pm',
	'LICENSE'      => 'perl',
	'AUTHOR'       => 'brian d foy <bdfoy@cpan.org>',
	
	'PREREQ_PM'    => { 
		'Test::More'        => '0',
		'LWP::Simple'       => '0',
		},

	'PM'           => {
		'lib/Vendor.pm'         => '$(INST_LIBDIR)/Vendor.pm',
		},

	'MAN3PODS'     => {
		'lib/Vendor.pm' => '$(INST_MAN3DIR)/Net::MAC::Vendor.3',
		},

	clean  => { FILES    => q|Net-MAC-Vendor-* Makefile.old MANIFEST.bak| },

	);
