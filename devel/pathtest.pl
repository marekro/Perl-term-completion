#!/usr/bin/perl
use Term::Completion::Path;
my $tc = Term::Completion::Path->new(
  prompt  => "Enter path to your signature file: "
);
my $path = $tc->complete();
print "You entered: $path\n";
