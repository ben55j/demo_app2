require 'test_helper'

class MalistTestsControllerTest < ActionController::TestCase
  setup do
    @malist_test = malist_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malist_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malist_test" do
    assert_difference('MalistTest.count') do
      post :create, malist_test: { attribut: @malist_test.attribut, cabinet: @malist_test.cabinet, content: @malist_test.content }
    end

    assert_redirected_to malist_test_path(assigns(:malist_test))
  end

  test "should show malist_test" do
    get :show, id: @malist_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @malist_test
    assert_response :success
  end

  test "should update malist_test" do
    patch :update, id: @malist_test, malist_test: { attribut: @malist_test.attribut, cabinet: @malist_test.cabinet, content: @malist_test.content }
    assert_redirected_to malist_test_path(assigns(:malist_test))
  end

  test "should destroy malist_test" do
    assert_difference('MalistTest.count', -1) do
      delete :destroy, id: @malist_test
    end

    assert_redirected_to malist_tests_path
  end
end
