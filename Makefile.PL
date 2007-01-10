# $Id: Makefile.PL,v 1.4 2007/01/10 04:35:06 comdog Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";

WriteMakefile(
	'NAME'	       => 'Net::MAC::Vendor',
	'VERSION_FROM' => 'lib/Vendor.pm',
	'LICENSE'       => 'perl',

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
