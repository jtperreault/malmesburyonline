require 'test_helper'

class WalkSectionControllerTest < ActionDispatch::IntegrationTest
  test "should get go_for" do
    get walk_section_go_for_url
    assert_response :success
  end

end
