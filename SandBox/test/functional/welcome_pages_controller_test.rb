require 'test_helper'

class WelcomePagesControllerTest < ActionController::TestCase
  setup do
    @welcome_page = welcome_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:welcome_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create welcome_page" do
    assert_difference('WelcomePage.count') do
      post :create, welcome_page: {  }
    end

    assert_redirected_to welcome_page_path(assigns(:welcome_page))
  end

  test "should show welcome_page" do
    get :show, id: @welcome_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @welcome_page
    assert_response :success
  end

  test "should update welcome_page" do
    put :update, id: @welcome_page, welcome_page: {  }
    assert_redirected_to welcome_page_path(assigns(:welcome_page))
  end

  test "should destroy welcome_page" do
    assert_difference('WelcomePage.count', -1) do
      delete :destroy, id: @welcome_page
    end

    assert_redirected_to welcome_pages_path
  end
end
