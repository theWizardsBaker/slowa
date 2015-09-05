require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post :create, assignment: { cancelled: @assignment.cancelled, comments: @assignment.comments, head_official_id: @assignment.head_official_id, home_team_id: @assignment.home_team_id, keep_attendance: @assignment.keep_attendance, match_date: @assignment.match_date, meet_type: @assignment.meet_type, visiting_team_id: @assignment.visiting_team_id }
    end

    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should show assignment" do
    get :show, id: @assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment
    assert_response :success
  end

  test "should update assignment" do
    patch :update, id: @assignment, assignment: { cancelled: @assignment.cancelled, comments: @assignment.comments, head_official_id: @assignment.head_official_id, home_team_id: @assignment.home_team_id, keep_attendance: @assignment.keep_attendance, match_date: @assignment.match_date, meet_type: @assignment.meet_type, visiting_team_id: @assignment.visiting_team_id }
    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete :destroy, id: @assignment
    end

    assert_redirected_to assignments_path
  end
end
