require 'test_helper'

class TestIntsControllerTest < ActionController::TestCase
  setup do
    @test_int = test_ints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_ints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_int" do
    assert_difference('TestInt.count') do
      post :create, test_int: { number: @test_int.number }
    end

    assert_redirected_to test_int_path(assigns(:test_int))
  end

  test "should show test_int" do
    get :show, id: @test_int
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_int
    assert_response :success
  end

  test "should update test_int" do
    patch :update, id: @test_int, test_int: { number: @test_int.number }
    assert_redirected_to test_int_path(assigns(:test_int))
  end

  test "should destroy test_int" do
    assert_difference('TestInt.count', -1) do
      delete :destroy, id: @test_int
    end

    assert_redirected_to test_ints_path
  end
end
