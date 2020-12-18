require 'test_helper'

class FcbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fcbooks_index_url
    assert_response :success
  end

end
