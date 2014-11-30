require 'test_helper'

class DatumTest < ActiveSupport::TestCase

  parse_in Rails.root.join('test', 'lib', 'datum_cases', 'datum_code.rb')

  #data_test "basic" do
  #  verify_basic_datum ## basic.scenario should be loaded - values correct
  #end

  #data_test "clone" do
  #  assert "basic_string", @datum.basic_string
  #end
end