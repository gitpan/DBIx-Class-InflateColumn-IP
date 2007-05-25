use strict;
use warnings;
use inc::Module::Install 0.65;

name 'DBIx-Class-InflateColumn-IP';
license 'perl';
perl_version '5.006001';
all_from 'lib/DBIx/Class/InflateColumn/IP.pm';

requires 'DBIx::Class'  => 0.07005;
requires 'NetAddr::IP';

tests 't/*.t';
clean_files 'DBIx-Class-InflateColumn-IP-* t/var';

eval {
    system 'pod2text lib/DBIx/Class/InflateColumn/IP.pm > README';
};

auto_install;
WriteAll;
