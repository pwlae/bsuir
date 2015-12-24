require 'test_helper'

class CitytripsControllerTest < ActionController::TestCase
  setup do
    @citytrip = citytrips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:citytrips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create citytrip" do
    assert_difference('Citytrip.count') do
      post :create, citytrip: { city_id: @citytrip.city_id, destenation: @citytrip.destenation, name: @citytrip.name, price: @citytrip.price, source: @citytrip.source }
    end

    assert_redirected_to citytrip_path(assigns(:citytrip))
  end

  test "should show citytrip" do
    get :show, id: @citytrip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @citytrip
    assert_response :success
  end

  test "should update citytrip" do
    patch :update, id: @citytrip, citytrip: { city_id: @citytrip.city_id, destenation: @citytrip.destenation, name: @citytrip.name, price: @citytrip.price, source: @citytrip.source }
    assert_redirected_to citytrip_path(assigns(:citytrip))
  end

  test "should destroy citytrip" do
    assert_difference('Citytrip.count', -1) do
      delete :destroy, id: @citytrip
    end

    assert_redirected_to citytrips_path
  end
end
