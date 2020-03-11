require 'test_helper'

class MensajesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get mensajes_create_url
    assert_response :success
  end

end
