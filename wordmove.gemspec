# -*- encoding: utf-8 -*-
require File.expand_path('../lib/wordmove/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Stefano Verna", "Ju Liu", 'David Massiani']
  gem.email         = ["stefano.verna@welaika.com", "ju.liu@welaika.com", "davidmassianirennes@gmail.com"]
  gem.description   = %q{Wordmove deploys your WordPress websites at the speed of light.}
  gem.summary       = %q{Wordmove, Capistrano for Wordpress}
  gem.homepage      = "https://github.com/dmassiani/wordmove"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "wordmove-mb4"
  gem.require_paths = ["lib"]
  gem.version       = Wordmove::VERSION

  gem.add_dependency "colored"
  gem.add_dependency "rake"
  gem.add_dependency "thor"
  gem.add_dependency "activesupport"
  gem.add_dependency "i18n"
  gem.add_dependency "photocopier", "~> 0.0.10"
  gem.add_dependency "escape"

  gem.add_development_dependency "rspec", '< 3'

  gem.post_install_message = <<-EOF

============================================================================
Beware! From version 1.0, we have changed the wordmove flags' behaviour:
they used to tell wordmove what to _skip_, now they tell what to _include_.

Read `wordmove help` for more info.
============================================================================

  EOF
end
