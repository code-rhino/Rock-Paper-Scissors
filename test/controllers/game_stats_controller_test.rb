require 'test_helper'

class GameStatsControllerTest < ActionController::TestCase
  setup do
    @game_stat = game_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_stat" do
    assert_difference('GameStat.count') do
      post :create, game_stat: { result: @game_stat.result }
    end

    assert_redirected_to game_stat_path(assigns(:game_stat))
  end

  test "should show game_stat" do
    get :show, id: @game_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_stat
    assert_response :success
  end

  test "should update game_stat" do
    patch :update, id: @game_stat, game_stat: { result: @game_stat.result }
    assert_redirected_to game_stat_path(assigns(:game_stat))
  end

  test "should destroy game_stat" do
    assert_difference('GameStat.count', -1) do
      delete :destroy, id: @game_stat
    end

    assert_redirected_to game_stats_path
  end
end
