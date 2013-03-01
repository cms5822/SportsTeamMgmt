require 'test_helper'

class TeamCoachesControllerTest < ActionController::TestCase
  setup do
    @team_coach = team_coaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_coaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_coach" do
    assert_difference('TeamCoach.count') do
      post :create, :team_coach => {  }
    end

    assert_redirected_to team_coach_path(assigns(:team_coach))
  end

  test "should show team_coach" do
    get :show, :id => @team_coach
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @team_coach
    assert_response :success
  end

  test "should update team_coach" do
    put :update, :id => @team_coach, :team_coach => {  }
    assert_redirected_to team_coach_path(assigns(:team_coach))
  end

  test "should destroy team_coach" do
    assert_difference('TeamCoach.count', -1) do
      delete :destroy, :id => @team_coach
    end

    assert_redirected_to team_coaches_path
  end
end
