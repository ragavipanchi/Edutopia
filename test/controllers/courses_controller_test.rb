require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get display_courses" do
    get courses_display_courses_url
    assert_response :success
  end

end
