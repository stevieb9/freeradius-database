#!/usr/bin/perl

use warnings;
use strict;

$ENV{ 'FreeRADIUS_Database_CONFIG' } = 't/FreeRADIUS_Database.conf-dist' ;

use Test::More qw( no_plan );

use_ok('FreeRADIUS::Database');
can_ok( 'FreeRADIUS::Database', '_nothing' );

{ # test for our vim fold to make `cover` happy

	my $R	= FreeRADIUS::Database->new();
	my $ret	= $R->_nothing();

	is ( $ret, 0, "_nothing is literally nothing" );
}
