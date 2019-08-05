require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "B-REP-LOG"
    assert_equal full_title("HOME"), "B-REP-LOG | HOME"
  end
end
