require 'test_helper'

class SchoolsControllerTest < ActionController::TestCase
  setup do
    @school = schools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create school" do
    assert_difference('School.count') do
      post :create, school: { AD_cell: @school.AD_cell, AD_email: @school.AD_email, AD_extension: @school.AD_extension, AD_first_name: @school.AD_first_name, AD_last_name: @school.AD_last_name, AD_phone: @school.AD_phone, active: @school.active, address_id: @school.address_id, coach_cell: @school.coach_cell, coach_email: @school.coach_email, coach_extension: @school.coach_extension, coach_first_name: @school.coach_first_name, coach_last_name: @school.coach_last_name, coach_phone: @school.coach_phone, dues_paid: @school.dues_paid, fees_paid: @school.fees_paid, name: @school.name, phone: @school.phone }
    end

    assert_redirected_to school_path(assigns(:school))
  end

  test "should show school" do
    get :show, id: @school
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @school
    assert_response :success
  end

  test "should update school" do
    patch :update, id: @school, school: { AD_cell: @school.AD_cell, AD_email: @school.AD_email, AD_extension: @school.AD_extension, AD_first_name: @school.AD_first_name, AD_last_name: @school.AD_last_name, AD_phone: @school.AD_phone, active: @school.active, address_id: @school.address_id, coach_cell: @school.coach_cell, coach_email: @school.coach_email, coach_extension: @school.coach_extension, coach_first_name: @school.coach_first_name, coach_last_name: @school.coach_last_name, coach_phone: @school.coach_phone, dues_paid: @school.dues_paid, fees_paid: @school.fees_paid, name: @school.name, phone: @school.phone }
    assert_redirected_to school_path(assigns(:school))
  end

  test "should destroy school" do
    assert_difference('School.count', -1) do
      delete :destroy, id: @school
    end

    assert_redirected_to schools_path
  end
end
