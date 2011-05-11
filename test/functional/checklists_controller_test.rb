require 'test_helper'

class ChecklistsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checklists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checklist" do
    assert_difference('Checklist.count') do
      post :create, :checklist => { }
    end

    assert_redirected_to checklist_path(assigns(:checklist))
  end

  test "should show checklist" do
    get :show, :id => checklists(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => checklists(:one).to_param
    assert_response :success
  end

  test "should update checklist" do
    put :update, :id => checklists(:one).to_param, :checklist => { }
    assert_redirected_to checklist_path(assigns(:checklist))
  end

  test "should destroy checklist" do
    assert_difference('Checklist.count', -1) do
      delete :destroy, :id => checklists(:one).to_param
    end

    assert_redirected_to checklists_path
  end
end
