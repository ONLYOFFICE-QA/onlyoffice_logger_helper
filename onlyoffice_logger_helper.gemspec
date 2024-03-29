# frozen_string_literal: true

require_relative 'lib/onlyoffice_logger_helper/version'

Gem::Specification.new do |s|
  s.name = OnlyofficeLoggerHelper::NAME
  s.version = OnlyofficeLoggerHelper::VERSION
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 3.0'
  s.authors = ['ONLYOFFICE', 'Pavel Lobashov', 'Roman Zagudaev']
  s.summary = 'Simple logging gem for ONLYOFFICE projects'
  s.description = 'Simple logging gem for ONLYOFFICE projects. Used in QA'
  s.homepage = 'https://github.com/ONLYOFFICE-QA/' \
               "#{OnlyofficeLoggerHelper::NAME}"
  s.metadata = {
    'bug_tracker_uri' => "#{s.homepage}/issues",
    'changelog_uri' => "#{s.homepage}/blob/master/CHANGELOG.md",
    'documentation_uri' => "https://www.rubydoc.info/gems/#{s.name}",
    'homepage_uri' => s.homepage,
    'source_code_uri' => s.homepage,
    'rubygems_mfa_required' => 'true'
  }
  s.email = %w[shockwavenn@gmail.com rzagudaev@gmail.com]
  s.files = Dir['lib/**/*']
  s.license = 'AGPL-3.0'
end
