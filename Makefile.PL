# $Id: Makefile.PL,v 1.3 2006/06/26 02:05:08 comdog Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Net::MAC::Vendor',
	'VERSION_FROM' => 'lib/Vendor.pm',

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
