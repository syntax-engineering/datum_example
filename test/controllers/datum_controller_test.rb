
require 'test_helper'

class DatumControllerTest < ActionController::TestCase

  data_test "basic" do
    verify_basic_datum ## basic.scenario should be loaded - values correct
  end

  data_test "import" do
    verify_basic_datum
  end

  data_test "extended" do
    case @datum.id
    when 1
      assert_equal @datum.datum_label, "one"
      assert_equal @datum.third_value, ONLINE_STATUS_MASK  # erb - const ref
    when 2
      assert_equal @datum.datum_label, "two"
      assert_equal @datum.third_value, "blah blah" #erb, require, w method call
    else
      assert false, "Unknown id for extended datum cases. Unk id: #{@datum.id}"
    end
  end
end