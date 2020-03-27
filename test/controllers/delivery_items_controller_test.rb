require 'test_helper'

class DeliveryItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get delivery_items_create_url
    assert_response :success
  end

end
