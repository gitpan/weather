# $Id$
use ExtUtils::MakeMaker;

require 5.006;

eval "use Test::Manifest 1.21";

WriteMakefile(
    'NAME'		    => 'weather',
    'ABSTRACT'      => 'fetches weather information',
	'VERSION'       => '0.11',
	'LICENSE'		=> 'perl',
	'AUTHOR'		=> 'brian d foy <bdfoy@cpan.org>',
	
	'EXE_FILES' =>  [ 'weather' ],
	    	
	'PREREQ_PM' => {
		'Astro::Sunrise'    => '0',
		'File::Find::Rule'  => '0',
		'Geo::WeatherNOAA'  => '0',
		'Test::File'        => '0',
		'Test::More'        => '0',
		'Test::Pod'         => '0.90',
		},
	
	'MAN1PODS' => {
		'weather' => '$(INST_MAN1DIR)/weather.1',
		},
		
	clean => { FILES => '*.bak weather-*' },
	);
