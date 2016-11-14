# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'onlyoffice_logger_helper/version'

Gem::Specification.new do |spec|
  spec.name          = 'onlyoffice_logger_helper'
  spec.version       = OnlyofficeLoggerHelper::VERSION
  spec.authors       = ['ONLYOFFICE', 'Pavel Lobashov', 'Roman Zagudaev']
  spec.email         = ['shockwavenn@gmail.com', 'rzagudaev@gmail.com']

  spec.summary       = 'Simple logging gem for ONLYOFFICE projects'
  spec.description   = 'Simple logging gem for ONLYOFFICE projects. Used in QA'
  spec.homepage      = 'https://github.com/onlyoffice-testing-robot/onlyoffice_logger_helper'

  spec.files = `git ls-files lib LICENSE.txt README.md`.split($RS)
  spec.require_paths = ['lib']

  spec.license = 'AGPL-3.0'
end
