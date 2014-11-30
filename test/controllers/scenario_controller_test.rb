require 'test_helper'

class ScenarioControllerTest < ActionController::TestCase
  test "load scenario" do
    process_scenario :basic_scenario
  end
  test "should verify basic scenario" do
    process_scenario "basic_scenario"
    verify_basic_scenario
  end
  test "should load import" do
    process_scenario "basic_with_import"
    verify_basic_scenario
    verify_person clancy, "Clancy", "Wiggum"            # verify import
    verify_person eddie, "Eddie", "Police-Officer"      # verify import
    verify_person lou,   "Lou", "Police-Officer"        # verify import
  end
end