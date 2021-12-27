# Change log

## master (unreleased)

### New Features

* Add Ruby 3.1 to CI

### Changes

* Require `mfa` for releasing gem
* Remove EOLed ruby 2.5 from CI

## 1.2.0 (2021-09-08)

### New Features

* Add `ruby-3.0` to CI
* Add `codecov` branch coverage check in CI
* Add new methods:
  * `OnlyofficeLoggerHelper.green_log()`
  * `OnlyofficeLoggerHelper.red_log()`

## 1.1.0 (2020-11-17)

### New Features

* Add `dependabot` config
* Add `rubocop-packaging` support

### Changes

* Moved repo to `ONLYOFFICE-QA` organization
* Require ruby v2.5 or newer
* Fix new warnings from `rubocop` v0.89.0 update
* Store all dependencies in `gemspec`
* Add `Gemfile.lock` to repo to store all dependencies version
* Use `rake` `sh` command for releasing gem

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
