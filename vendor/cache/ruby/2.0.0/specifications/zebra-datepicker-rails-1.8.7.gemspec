# -*- encoding: utf-8 -*-
# stub: zebra-datepicker-rails 1.8.7 ruby lib

Gem::Specification.new do |s|
  s.name = "zebra-datepicker-rails"
  s.version = "1.8.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Marcus Derencius"]
  s.date = "2013-12-07"
  s.description = "Zebra Datepicker packaged for rails"
  s.email = ["derencius@gmail.com"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Zebra Datepicker (http://stefangabos.ro/jquery/zebra-datepicker/) packaged for rails' asset pipeline."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<railties>, [">= 3.0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<railties>, [">= 3.0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<railties>, [">= 3.0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
  end
end
