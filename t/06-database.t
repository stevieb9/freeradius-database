#!/usr/bin/perl

use warnings;
use strict;

use Test::More qw( no_plan );

use_ok('FreeRADIUS::Database');
use_ok('FreeRADIUS::Database::Storage');
use_ok('FreeRADIUS::Database::Storage::Replicated');

can_ok( 'FreeRADIUS::Database', '_schema' );

$ENV{ FreeRADIUS_Database_CONFIG } = 't/FreeRADIUS_Database.conf-dist';

{ # test schema availability

	my $r = FreeRADIUS::Database->new();

	my $schema = $r->_schema();

	isa_ok( $schema, 'FreeRADIUS::Database::Storage', "FreeRADIUS::Database can produce a proper schema" );
}
