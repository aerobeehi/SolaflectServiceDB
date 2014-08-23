require 'test_helper'

class FatTestsControllerTest < ActionController::TestCase
  setup do
    @fat_test = fat_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fat_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fat_test" do
    assert_difference('FatTest.count') do
      post :create, fat_test: {  }
    end

    assert_redirected_to fat_test_path(assigns(:fat_test))
  end

  test "should show fat_test" do
    get :show, id: @fat_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fat_test
    assert_response :success
  end

  test "should update fat_test" do
    patch :update, id: @fat_test, fat_test: {  }
    assert_redirected_to fat_test_path(assigns(:fat_test))
  end

  test "should destroy fat_test" do
    assert_difference('FatTest.count', -1) do
      delete :destroy, id: @fat_test
    end

    assert_redirected_to fat_tests_path
  end
end
