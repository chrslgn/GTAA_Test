require 'test_helper'

class RegistrationResponsesControllerTest < ActionController::TestCase
  setup do
    @registration = registrations(:one)
    @registration_response = registration_responses(:one)
  end

  test "should get index" do
    get :index, registration_id: @registration.to_param
    assert_response :success
    assert_not_nil assigns(:registration_responses)
  end

  test "should get new" do
    get :new, registration_id: @registration.to_param
    assert_response :success
  end

  test "should create registration_response" do
    assert_difference('RegistrationResponse.count') do
      post :create, registration_response: @registration_response.attributes, registration_id: @registration.to_param
    end

    assert_redirected_to registration_registration_response_path(@registration, assigns(:registration_response))
  end

  test "should show registration_response" do
    get :show, id: @registration_response, registration_id: @registration.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registration_response, registration_id: @registration.to_param
    assert_response :success
  end

  test "should update registration_response" do
    put :update, id: @registration_response, registration_response: @registration_response.attributes, registration_id: @registration.to_param
    assert_redirected_to registration_registration_response_path(@registration, assigns(:registration_response))
  end

  test "should destroy registration_response" do
    assert_difference('RegistrationResponse.count', -1) do
      delete :destroy, id: @registration_response, registration_id: @registration.to_param
    end

    assert_redirected_to registration_registration_responses_path(@registration)
  end
end
