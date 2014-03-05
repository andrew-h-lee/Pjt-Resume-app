require 'test_helper'

class PersonalInfosControllerTest < ActionController::TestCase
  setup do
    @personal_info = personal_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personal_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personal_info" do
    assert_difference('PersonalInfo.count') do
      post :create, personal_info: { about: @personal_info.about, address: @personal_info.address, email: @personal_info.email, facebook: @personal_info.facebook, google: @personal_info.google, linkedin: @personal_info.linkedin, name: @personal_info.name, phone: @personal_info.phone, tagline: @personal_info.tagline, twitter: @personal_info.twitter, url: @personal_info.url }
    end

    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should show personal_info" do
    get :show, id: @personal_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personal_info
    assert_response :success
  end

  test "should update personal_info" do
    patch :update, id: @personal_info, personal_info: { about: @personal_info.about, address: @personal_info.address, email: @personal_info.email, facebook: @personal_info.facebook, google: @personal_info.google, linkedin: @personal_info.linkedin, name: @personal_info.name, phone: @personal_info.phone, tagline: @personal_info.tagline, twitter: @personal_info.twitter, url: @personal_info.url }
    assert_redirected_to personal_info_path(assigns(:personal_info))
  end

  test "should destroy personal_info" do
    assert_difference('PersonalInfo.count', -1) do
      delete :destroy, id: @personal_info
    end

    assert_redirected_to personal_infos_path
  end
end
