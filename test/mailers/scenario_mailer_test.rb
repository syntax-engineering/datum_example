require 'test_helper'

class ScenarioMailerTest < ActionMailer::TestCase
  parse_in Rails.root.join('test', 'lib', 'datum_cases', 'datum_code.rb')
end