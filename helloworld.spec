Name:           helloworld
Version:        1.0.0
Release:        1%{?dist}
Summary:        helloworld_summary 

License:        hellowold_license 
URL:            https://www.helloworld.com 
Source0:        %{name}-%{version}.tar.gz

#BuildRequires:  
#Requires:       

%description
hello world description

%prep
%setup -q


%build
make %{?_smp_mflags}


%install
echo rm -rf $RPM_BUILD_ROOT
#%make_install


%files
%doc



%changelog
