# $Id

use Test::More tests => 2;

use Test::File;

my $file = 'blib/script/weather';

print "bail out! Script file is missing!" unless file_exists_ok( $file );

my $output = `$^X -c $file 2>&1`;

like( $output, qr/syntax OK$/, 'script compiles' );