# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'termislator/version'

Gem::Specification.new do |gem|
  gem.name          = "termislator"
  gem.version       = Termislator::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["p.urbanek89@gmail.com"]
  gem.summary   = %q{Google Translate in your terminal}
  gem.description       = %q{ Termislator is an easy way to use all the Google Translate goodies straight from your terminal. No need to open browser, type url, choose languages and then FINALLY get the translation. One simple command and job's done. }
  # gem.homepage      = "http://rubygems.org/gems/termislator"
  gem.files         = `git ls-files`.split($/)
  # gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]
  gem.add_development_dependency "rspec", '~> 2.14.1'
  gem.add_development_dependency "vcr", '~> 2.5.0'
  gem.add_development_dependency "webmock", '~> 1.12.0'
end
