Name:           universal-devops-linux
Version:        0.1.0
Release:        1%{?dist}
Summary:        DevOps-ready meta package
License:        MIT
URL:            https://github.com/Jani-shiv/universal-devops-linux
Source0:        %{name}-%{version}.tar.gz
BuildArch:      noarch
BuildRequires:  rpm-build
Requires:       git, jq, curl, wget, htop

%description
Meta package installs essential DevOps tools on RHEL/Fedora family systems.

%prep
%setup -q

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/bin
install -m 0755 src/utilities/devops-init.sh $RPM_BUILD_ROOT/usr/bin/devops-init

%files
%doc README.md
/usr/bin/devops-init

%changelog
* Thu Oct 02 2025 Jani <you@example.com> - 0.1.0-1
- Initial RPM release
