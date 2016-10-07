package Acme::LastWords;

# DATE
# VERSION

use strict;
use warnings;

our @words = (
    "Dictionary.", # Joseph Wright
    "Happy.", # Raphael
    "Mozart!", # Gustav Mahler
    "I'm going, but I'm going in the name of the Lord.", # Bessie Smith
    "I'm losing it.", # Frank Sinatra
    "At fifty, everyone has the face he deserves.", # George Orwell
    "A party! Let’s have a party.", # Margaret Sanger
    # TODO: add more
);

sub new {
    my $class = shift;
    bless [], $class;
}

sub DESTROY {
    print $words[rand @words], "\n";
}

1;
# ABSTRACT: Object that prints some famous last words when destroyed

=for Pod::Coverage ^(new|DESTROY)$

=head1 SYNOPSIS

 use Acme::LastWords;

 my $obj = Acme::LastWords->new;

 undef $obj; # will print e.g. "Dictionary."


=head1 DESCRIPTION

This object is for testing only.

PS: Do you want to know who uttered a particular last words? Use the source.

=cut
