require 'test_helper'

class FeatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feats_index_url
    assert_response :success
  end

end
