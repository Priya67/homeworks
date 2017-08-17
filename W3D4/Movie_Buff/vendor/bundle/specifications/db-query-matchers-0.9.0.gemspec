# -*- encoding: utf-8 -*-
# stub: db-query-matchers 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "db-query-matchers"
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Brigade Engineering", "Henric Trotzig", "Joe Lencioni"]
  s.date = "2017-05-18"
  s.email = ["eng@brigade.com", "henric.trotzig@brigade.com", "joe.lencioni@brigade.com"]
  s.homepage = "https://github.com/brigade/db-query-matchers"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.5.1"
  s.summary = "RSpec matchers for database queries"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["<= 6.0", ">= 4.0"])
      s.add_runtime_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<activerecord>, ["<= 6.0", ">= 4.0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, ["~> 2.0"])
    else
      s.add_dependency(%q<activesupport>, ["<= 6.0", ">= 4.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<activerecord>, ["<= 6.0", ">= 4.0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<appraisal>, ["~> 2.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["<= 6.0", ">= 4.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<activerecord>, ["<= 6.0", ">= 4.0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<appraisal>, ["~> 2.0"])
  end
end
