require 'test_helper'

class MicrpostsControllerTest < ActionController::TestCase
  setup do
    @micrpost = micrposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micrposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micrpost" do
    assert_difference('Micrpost.count') do
      post :create, micrpost: { content: @micrpost.content, user_id: @micrpost.user_id }
    end

    assert_redirected_to micrpost_path(assigns(:micrpost))
  end

  test "should show micrpost" do
    get :show, id: @micrpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micrpost
    assert_response :success
  end

  test "should update micrpost" do
    put :update, id: @micrpost, micrpost: { content: @micrpost.content, user_id: @micrpost.user_id }
    assert_redirected_to micrpost_path(assigns(:micrpost))
  end

  test "should destroy micrpost" do
    assert_difference('Micrpost.count', -1) do
      delete :destroy, id: @micrpost
    end

    assert_redirected_to micrposts_path
  end
end
