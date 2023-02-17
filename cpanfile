use strict;
use warnings;

on 'runtime' => sub {
    requires 'File::Spec';
    requires 'IO::Handle';
    requires 'Term::ReadKey';
    recommends 'Term::Size';
};

on 'configure' => sub {
    requires 'ExtUtils::MakeMaker';
};

on 'test' => sub {
    requires 'Test::More' => '0.60';
    requires 'IO::String';
    requires 'blib';
};

on 'develop' => sub {
    requires 'Pod::Coverage::TrustPod';
    requires 'Test::CheckManifest' => '1.29';
    requires 'Test::CPAN::Changes' => '0.4';
    requires 'Test::CPAN::Meta';
    requires 'Test::Kwalitee' => '1.22';
    requires 'Test::Pod::Coverage';
    requires 'Test::Pod::Spelling::CommonMistakes' => '1.000';
};
