require 'test_helper'

class InfomationControllerTest < ActionController::TestCase
  test "should get company" do
    get :company
    assert_response :success
  end

  test "should get speake" do
    get :speake
    assert_response :success
  end

  test "should get group" do
    get :group
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get affirms" do
    get :affirms
    assert_response :success
  end

end
