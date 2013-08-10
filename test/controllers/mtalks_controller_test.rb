require 'test_helper'

class MtalksControllerTest < ActionController::TestCase
  setup do
    @mtalk = mtalks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mtalks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mtalk" do
    assert_difference('Mtalk.count') do
      post :create, mtalk: { name: @mtalk.name, word: @mtalk.word }
    end

    assert_redirected_to mtalk_path(assigns(:mtalk))
  end

  test "should show mtalk" do
    get :show, id: @mtalk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mtalk
    assert_response :success
  end

  test "should update mtalk" do
    patch :update, id: @mtalk, mtalk: { name: @mtalk.name, word: @mtalk.word }
    assert_redirected_to mtalk_path(assigns(:mtalk))
  end

  test "should destroy mtalk" do
    assert_difference('Mtalk.count', -1) do
      delete :destroy, id: @mtalk
    end

    assert_redirected_to mtalks_path
  end
end
