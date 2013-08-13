# -*- mode: ruby; encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'zxing/version'

java = RUBY_PLATFORM =~ /java/
macruby = defined?(RUBY_ENGINE) && RUBY_ENGINE == "macruby"

Gem::Specification.new do |s|
  s.name = "zxing.rb"
  s.version = ZXing::VERSION

  s.authors = ["Frank Wang"]
  s.email = ["ftwang@gmail.com"]
  s.description = "An interface to the zxing decoder libraries. Supports zxing C++ under ruby 2.0.0."

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.rdoc CHANGELOG.rdoc)
  s.extra_rdoc_files = ["README.rdoc"]

  s.homepage = "http://github.com/smparkes/zxing.rb"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.summary = "Ruby interface to zxing.rb"
  
  if !java && !macruby
    s.add_dependency('ffi', '~>1.1.5')
  end

  if !java
    s.add_dependency('rmagick')
  end
end
