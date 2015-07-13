require 'test_helper'

class MusicfilesControllerTest < ActionController::TestCase
  setup do
    @musicfile = musicfiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musicfiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musicfile" do
    assert_difference('Musicfile.count') do
      post :create, musicfile: { description: @musicfile.description }
    end

    assert_redirected_to musicfile_path(assigns(:musicfile))
  end

  test "should show musicfile" do
    get :show, id: @musicfile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musicfile
    assert_response :success
  end

  test "should update musicfile" do
    patch :update, id: @musicfile, musicfile: { description: @musicfile.description }
    assert_redirected_to musicfile_path(assigns(:musicfile))
  end

  test "should destroy musicfile" do
    assert_difference('Musicfile.count', -1) do
      delete :destroy, id: @musicfile
    end

    assert_redirected_to musicfiles_path
  end
end
