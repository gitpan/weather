# $Id: Makefile.PL,v 1.1 2003/01/20 16:33:08 comdog Exp $
use ExtUtils::MakeMaker;

sub ExtUtils::MM_Any::test_via_harness
	{
    my($self, $perl, $tests) = @_;

    return qq|\t$perl "-MTest::Manifest" | .
           qq|"-e" "run_t_manifest(\$(TEST_VERBOSE), '\$(INST_LIB)', | .
           qq|'\$(INST_ARCHLIB)')"\n|;
	}

WriteMakefile(
    'NAME'		    => 'weather',
	'VERSION'       => '0.10',
	
	'EXE_FILES' =>  [ 'weather' ],
	    	
	'PREREQ_PM' => {
		'Astro::Sunrise'    => '0',
		'File::Find::Rule'  => '0',
		'Geo::WeatherNOAA'  => '0',
		'Test::File'        => '0',
		'Test::Manifest'    => '0.91',
		'Test::More'        => '0',
		'Test::Pod'         => '0.90',
		},

	'INSTALLSCRIPT' => '/usr/local/bin',
	
	'MAN1PODS' => {
		'weather' => '$(INST_MAN1DIR)/weather.1',
		},
		
	clean => { FILES => '*.bak weather-*' },
	);
