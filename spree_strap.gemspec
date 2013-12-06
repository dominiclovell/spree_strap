# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_strap'
  s.version     = '2.1.2'
  s.summary     = 'A starter theme using Bootstrap 3 for Spree Commerce 2.1'
  s.description = 'This gem is a Spree extension that installs a Bootstrap 3 skeleton view replacement.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Rounded'
  s.email     = 'aloho@roundedco.com'
  s.homepage  = 'http://www.roundedco.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.2'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'jquery-rails'
  s.add_development_dependency 'therubyracer'
  s.add_development_dependency 'less-rails'
end
