Encoding.default_internal = Encoding.default_external = 'UTF-8'

require 'codeclimate-test-reporter'
require 'simplecov'
require 'active_support/core_ext/string'
require 'moon/packages'

CodeClimate::TestReporter.start
SimpleCov.start

require 'moon-tmx/load'
