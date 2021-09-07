# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'simplecov'
SimpleCov.start do
  enable_coverage :branch
end

require 'onlyoffice_logger_helper'
require_relative '../config/static_data'
