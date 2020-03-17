# frozen_string_literal: true

require_relative 'lib/onlyoffice_logger_helper/version'

Gem::Specification.new do |s|
  s.name = 'onlyoffice_logger_helper'
  s.version = OnlyofficeLoggerHelper::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov', 'Roman Zagudaev']
  s.summary = 'Simple logging gem for ONLYOFFICE projects'
  s.description = 'Simple logging gem for ONLYOFFICE projects. Used in QA'
  s.homepage = 'https://github.com/onlyoffice-testing-robot/onlyoffice_logger_helper'
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage
  }
  s.email = %w[shockwavenn@gmail.com rzagudaev@gmail.com]
  s.files = Dir['lib/**/*']
  s.license = 'AGPL-3.0'
end
