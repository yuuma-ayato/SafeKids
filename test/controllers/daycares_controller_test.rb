require 'test_helper'

class DaycaresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get daycares_index_url
    assert_response :success
  end

end
