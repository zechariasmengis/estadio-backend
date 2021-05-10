require "test_helper"

class StadiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stadium = stadia(:one)
  end

  test "should get index" do
    get stadia_url, as: :json
    assert_response :success
  end

  test "should create stadium" do
    assert_difference('Stadium.count') do
      post stadia_url, params: { stadium: { address: @stadium.address, capacity: @stadium.capacity, city: @stadium.city, country: @stadium.country, home_team: @stadium.home_team, image: @stadium.image, name: @stadium.name, primary_competition: @stadium.primary_competition, primary_sport: @stadium.primary_sport } }, as: :json
    end

    assert_response 201
  end

  test "should show stadium" do
    get stadium_url(@stadium), as: :json
    assert_response :success
  end

  test "should update stadium" do
    patch stadium_url(@stadium), params: { stadium: { address: @stadium.address, capacity: @stadium.capacity, city: @stadium.city, country: @stadium.country, home_team: @stadium.home_team, image: @stadium.image, name: @stadium.name, primary_competition: @stadium.primary_competition, primary_sport: @stadium.primary_sport } }, as: :json
    assert_response 200
  end

  test "should destroy stadium" do
    assert_difference('Stadium.count', -1) do
      delete stadium_url(@stadium), as: :json
    end

    assert_response 204
  end
end
