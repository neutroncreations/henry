Gem::Specification.new do |gem|
  gem.authors       = ["Roberts, Marc"]
  gem.email         = ["marc@neutroncreations.com"]
  gem.description   = %q{A simple admin interface to Jekyll's static pages}
  gem.summary       = %q{An admin interface to Jekyll}
  gem.homepage      = "http://github.com/neutroncreations/henry"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/.*_spec.rb})
  gem.name          = "henry"
  gem.require_paths = ["lib"]
  gem.add_dependency('sinatra', '~> 1.4.4')
  gem.add_dependency('haml', '~> 4.0.5')
  gem.add_dependency('jekyll', '~> 1.4.3')
  gem.version       = '0.0.1'
end
