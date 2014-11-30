if ENV["COVERAGE"] == "1"
  require 'simplecov' # simple-cov
  SimpleCov.coverage_dir('test/coverage')
  SimpleCov.start 'rails'
end

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'lib/verify_helpers'

class ActiveSupport::TestCase
  fixtures :all
  include VerifyHelpers
end

## The same basic Datum core tests are used from several test types
## So that we can reuse the identical code snippet across types, we load
## Ruby into the test type manually.
##
## This is *not* required by Datum, it is used only for code-reuse
def parse_in file
  eval(File.read(file))
end


Capybara.register_driver :firefox_driver do |app|
  Capybara::Selenium::Driver.new(app, :browser => :firefox,
    :profile => 'name_of_existing_profile')
end