#!/usr/bin/perl

use warnings;
use strict;

$ENV{ FreeRADIUS_Database_CONFIG } = 't/FreeRADIUS_Database.conf-dist';

use Test::More qw( no_plan );

BEGIN { use_ok('FreeRADIUS::Database') };

{ # _configure() &RAS callback

	my $rad = FreeRADIUS::Database->new();
	my $ras_href = $rad->RAS();

	isa_ok( $ras_href, 'HASH', "_configure() properly thinks the RAS portion of the config file" );
}
