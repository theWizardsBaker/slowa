require 'test_helper'

class OfficialsControllerTest < ActionController::TestCase
  setup do
    @official = officials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:officials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create official" do
    assert_difference('Official.count') do
      post :create, official: { active: @official.active, cell_phone: @official.cell_phone, email: @official.email, first_name: @official.first_name, home_phone: @official.home_phone, last_name: @official.last_name, official_id: @official.official_id, service_years: @official.service_years, work_phone: @official.work_phone }
    end

    assert_redirected_to official_path(assigns(:official))
  end

  test "should show official" do
    get :show, id: @official
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @official
    assert_response :success
  end

  test "should update official" do
    patch :update, id: @official, official: { active: @official.active, cell_phone: @official.cell_phone, email: @official.email, first_name: @official.first_name, home_phone: @official.home_phone, last_name: @official.last_name, official_id: @official.official_id, service_years: @official.service_years, work_phone: @official.work_phone }
    assert_redirected_to official_path(assigns(:official))
  end

  test "should destroy official" do
    assert_difference('Official.count', -1) do
      delete :destroy, id: @official
    end

    assert_redirected_to officials_path
  end
end
