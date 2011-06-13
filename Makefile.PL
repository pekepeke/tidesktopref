use inc::Module::Install;

name 'tidesktopref';

abstract_from 'tidesktopref';
author_from 'tidesktopref';
license_from 'tidesktopref';
perl_version_from 'tidesktopref';
version_from 'tidesktopref';

readme_from 'tidesktopref';
# distribution_type 'script';

no_index directory => 'orig';

requires_external_bin 'w3m';
configure_requires 'Module::Install::ReadmeFromPod';
configure_requires 'File::Slurp';
requires 'File::ShareDir';

install_script 'tidesktopref';
mkdir 'doc';
do 'tools/tidy.pl';
install_share 'doc';

auto_include;
# auto_install;

WriteAll;

