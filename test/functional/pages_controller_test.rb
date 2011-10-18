require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get bio" do
    get :bio
    assert_response :success
  end

  test "should get order" do
    get :order
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get book" do
    get :book
    assert_response :success
  end

end
