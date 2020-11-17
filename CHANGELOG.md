# Change log

## master (unreleased)

### New Features

* Add `dependabot` config

### Changes

* Require ruby v2.5 or newer
* Fix new warnings from `rubocop` v0.89.0 update
* Store all dependencies in `gemspec`
* Add `Gemfile.lock` to repo to store all dependencies version

## 1.0.3 (2020-05-29)

### New Features

* Check via `markdownlint` in CI
* Cleanup README file, remove auto-generated stuff without useful info
* Add `rubocop-performance`, `rubocop-rake` dependency
* All rubocop dependencies now fixed version (easier to update)
* Add rubocop task to CI
* Add CI task to check documentation coverage
* Add missed documentation
* Add `yard` as development dependency

### Changes

* Use github actions instead of travis ci
* Move `rake` from `development` dependency to base dependency
* Dump `codecov` support in favor of clean `simplecov` result check

## 1.0.2 (2020-03-17)

### New Features

* Minor cleanups of `gemspec` file
* `rake` tasks for releasing gem

### Changes

* Drop support of rubies older, than 2.3

## 1.0.1

* Fix RuboCop 0.49 warnings (minor speedup by `Performance/Caller` cop)

## 1.0.0

* Shorter call `OnlyofficeLoggerHelper.log` instead of longer variant `OnlyofficeLoggerHelper::log.print_to_log`

## 0.0.1

* Initial release of `onlyoffice_logger_helper` gem
