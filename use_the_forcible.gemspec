# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'use_the_forcible/version'

Gem::Specification.new do |s|
  s.rubygems_version      = '1.3.5'

  s.name                  = 'use_the_forcible'
  s.rubyforge_project     = 'use_the_forcible'

  s.version               = UseTheForcible::VERSION
  s.platform              = Gem::Platform::RUBY

  s.authors               = %w{jfelchner m5rk}
  s.email                 = 'support@chirrpy.com'
  s.date                  = Date.today
  s.homepage              = 'https://github.com/chirrpy/use_the_forcible'

  s.summary               = %q{Easy Accessors for ActiveModel Objects}
  s.description           = %q{}

  s.rdoc_options          = ["--charset = UTF-8"]
  s.extra_rdoc_files      = %w[README.md LICENSE]

  #= Manifest =#
  s.executables           = Dir["{bin}/**/*"]
  s.files                 = Dir["{app,config,db,lib}/**/*"] + %w{Rakefile README.md}
  s.test_files            = Dir["{test,spec,features}/**/*"]
  s.require_paths         = ["lib"]
  #= Manifest =#

  s.add_dependency              'activerecord',         '~> 3.2'

  s.add_development_dependency  'rspec',                '~> 2.12'
  s.add_development_dependency  'rspectacular',         '~> 0.5'
  s.add_development_dependency  'sqlite3',              '~> 1.3'
end
