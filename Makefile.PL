use inc::Module::Install 0.91;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/SRU.pm > README' );
}

perl_version '5.008';

name 'SRU';
all_from 'lib/SRU.pm';

requires 'XML::LibXML';
requires 'XML::Simple';
requires 'URI';
requires 'Class::Accessor';
requires 'CQL::Parser' => '0.3';

recommends 'Moose';
recommends 'LWP::Simple';
recommends 'Carp';

test_requires 'Test::More';
test_requires 'Test::Exception';

repository "http://github.com/edsu/sru-perl/tree/master";

WriteAll;
