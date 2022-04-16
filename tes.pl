#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
use camel::agent qw(create_agent doc_agent author_lib);

my $ur = create_agent("mulai" => "offline");
my $d = doc_agent();

print "$ur\n";
