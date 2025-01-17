$:.push File.expand_path("../lib", __FILE__)
require "wikidata/version"

Gem::Specification.new do |s|
  s.name        = "wikidata-client"
  s.version     = Wikidata::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ["MIT"]
  s.summary     = "Wikidata API client"
  s.email       = "kevinlacointe@gmail.com"
  s.homepage    = "https://github.com/klacointe/wikidata-client"
  s.authors     = ['Kévin Lacointe']

  s.files         = `git ls-files -- lib config *.md LICENCE`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency("faraday", "~> 2.1")
  s.add_dependency("hashie", "~> 5")
  # s.add_dependency("excon", "~> 0.91")
  s.add_dependency('faraday-net_http')

  s.add_development_dependency("rspec", "~> 3.1")
  s.add_development_dependency("webmock", "~> 1.18")
  s.add_development_dependency("vcr", "~> 2.9")
  s.add_development_dependency("pry", "~> 0.10")
  s.add_development_dependency("rake", "~> 10.3")
end
