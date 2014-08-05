require 'test_helper'

class GratchesControllerTest < ActionController::TestCase
  setup do
    @gratch = gratches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gratches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gratch" do
    assert_difference('Gratch.count') do
      post :create, gratch: { adress: @gratch.adress, bro1_id: @gratch.bro1_id, bro2_id: @gratch.bro2_id, bro3_id: @gratch.bro3_id, bro4_id: @gratch.bro4_id, city: @gratch.city, datetime: @gratch.datetime, host_id: @gratch.host_id, zipcode: @gratch.zipcode }
    end

    assert_redirected_to gratch_path(assigns(:gratch))
  end

  test "should show gratch" do
    get :show, id: @gratch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gratch
    assert_response :success
  end

  test "should update gratch" do
    patch :update, id: @gratch, gratch: { adress: @gratch.adress, bro1_id: @gratch.bro1_id, bro2_id: @gratch.bro2_id, bro3_id: @gratch.bro3_id, bro4_id: @gratch.bro4_id, city: @gratch.city, datetime: @gratch.datetime, host_id: @gratch.host_id, zipcode: @gratch.zipcode }
    assert_redirected_to gratch_path(assigns(:gratch))
  end

  test "should destroy gratch" do
    assert_difference('Gratch.count', -1) do
      delete :destroy, id: @gratch
    end

    assert_redirected_to gratches_path
  end
end
