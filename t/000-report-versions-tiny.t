use strict;
use warnings;
use Test::More 0.88;
# This is a relatively nice way to avoid Test::NoWarnings breaking our
# expectations by adding extra tests, without using no_plan.  It also helps
# avoid any other test module that feels introducing random tests, or even
# test plans, is a nice idea.
our $success = 0;
END { $success && done_testing; }

# List our own version used to generate this
my $v = "\nGenerated by Dist::Zilla::Plugin::ReportVersions::Tiny v1.09\n";

eval {                     # no excuses!
    # report our Perl details
    my $want = 'v5.10.0';
    $v .= "perl: $] (wanted $want) on $^O from $^X\n\n";
};
defined($@) and diag("$@");

# Now, our module version dependencies:
sub pmver {
    my ($module, $wanted) = @_;
    $wanted = " (want $wanted)";
    my $pmver;
    eval "require $module;";
    if ($@) {
        if ($@ =~ m/Can't locate .* in \@INC/) {
            $pmver = 'module not found.';
        } else {
            diag("${module}: $@");
            $pmver = 'died during require.';
        }
    } else {
        my $version;
        eval { $version = $module->VERSION; };
        if ($@) {
            diag("${module}: $@");
            $pmver = 'died during VERSION check.';
        } elsif (defined $version) {
            $pmver = "$version";
        } else {
            $pmver = '<undef>';
        }
    }

    # So, we should be good, right?
    return sprintf('%-45s => %-10s%-15s%s', $module, $pmver, $wanted, "\n");
}

eval { $v .= pmver('Cwd','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::Author::KENTNL::MinimumPerl','v1.8.3') };
eval { $v .= pmver('Dist::Zilla::Plugin::Authority','any version') };
eval { $v .= pmver('Dist::Zilla::Plugin::AutoPrereqs','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::Bootstrap::lib','0.04000001') };
eval { $v .= pmver('Dist::Zilla::Plugin::CheckExtraTests','0.011') };
eval { $v .= pmver('Dist::Zilla::Plugin::ConfirmRelease','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::EOLTests','0.02') };
eval { $v .= pmver('Dist::Zilla::Plugin::FinderCode','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::Check','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::Commit','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::CommitBuild','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::GatherDir','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::NextVersion','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::Git::Tag','2.014') };
eval { $v .= pmver('Dist::Zilla::Plugin::GithubMeta','0.38') };
eval { $v .= pmver('Dist::Zilla::Plugin::License','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::Manifest','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::ManifestSkip','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaConfig','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaData::BuiltWith','0.03000100') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaJSON','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaProvides::Package','1.15000000') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaTests','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::MetaYAML','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::ModuleBuild','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::NextRelease','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::PkgVersion','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodCoverageTests','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodSyntaxTests','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::PodWeaver','3.101642') };
eval { $v .= pmver('Dist::Zilla::Plugin::Prereqs','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::Prereqs::MatchInstalled','v0.1.3') };
eval { $v .= pmver('Dist::Zilla::Plugin::Prereqs::MatchInstalled::All','v0.1.1') };
eval { $v .= pmver('Dist::Zilla::Plugin::Prereqs::Plugins','v0.1.3') };
eval { $v .= pmver('Dist::Zilla::Plugin::PruneCruft','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::ReadmeAnyFromPod','0.131500') };
eval { $v .= pmver('Dist::Zilla::Plugin::ReadmeFromPod','0.18') };
eval { $v .= pmver('Dist::Zilla::Plugin::ReportVersions::Tiny','1.09') };
eval { $v .= pmver('Dist::Zilla::Plugin::Test::CPAN::Changes','0.008') };
eval { $v .= pmver('Dist::Zilla::Plugin::Test::Compile','2.033') };
eval { $v .= pmver('Dist::Zilla::Plugin::Test::Kwalitee','2.06') };
eval { $v .= pmver('Dist::Zilla::Plugin::Test::MinimumVersion','2.000005') };
eval { $v .= pmver('Dist::Zilla::Plugin::Test::Perl::Critic','2.112410') };
eval { $v .= pmver('Dist::Zilla::Plugin::TestRelease','4.300039') };
eval { $v .= pmver('Dist::Zilla::Plugin::Twitter','0.021') };
eval { $v .= pmver('Dist::Zilla::Plugin::UploadToCPAN','4.300039') };
eval { $v .= pmver('Dist::Zilla::PluginBundle::Author::KENTNL','v1.8.3') };
eval { $v .= pmver('Dist::Zilla::PluginBundle::Author::KENTNL::Lite','v1.7.2') };
eval { $v .= pmver('Dist::Zilla::Role::PrereqSource','4.300039') };
eval { $v .= pmver('File::Copy::Recursive','0.38') };
eval { $v .= pmver('File::Spec','any version') };
eval { $v .= pmver('IO::Handle','any version') };
eval { $v .= pmver('IPC::Open3','any version') };
eval { $v .= pmver('Module::Build','0.4007') };
eval { $v .= pmver('Moose','2.1005') };
eval { $v .= pmver('MooseX::Types::Moose','0.38') };
eval { $v .= pmver('Path::FindDev','v0.3.1') };
eval { $v .= pmver('Path::Tiny','0.036') };
eval { $v .= pmver('Pod::Coverage::TrustPod','0.100002') };
eval { $v .= pmver('Scalar::Util','1.32') };
eval { $v .= pmver('Test::CPAN::Changes','0.23') };
eval { $v .= pmver('Test::CPAN::Meta','0.23') };
eval { $v .= pmver('Test::DZil','4.300039') };
eval { $v .= pmver('Test::Fatal','0.013') };
eval { $v .= pmver('Test::Kwalitee','1.15') };
eval { $v .= pmver('Test::More','0.98') };
eval { $v .= pmver('Test::Pod','1.48') };
eval { $v .= pmver('Test::Pod::Coverage','1.08') };
eval { $v .= pmver('strict','any version') };
eval { $v .= pmver('version','0.9904') };
eval { $v .= pmver('warnings','any version') };


# All done.
$v .= <<'EOT';

Thanks for using my code.  I hope it works for you.
If not, please try and include this output in the bug report.
That will help me reproduce the issue and solve your problem.

EOT

diag($v);
ok(1, "we really didn't test anything, just reporting data");
$success = 1;

# Work around another nasty module on CPAN. :/
no warnings 'once';
$Template::Test::NO_FLUSH = 1;
exit 0;