require 'test_helper'

class OrganizationsControllerTest < ActionController::TestCase
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post :create, organization: { city: @organization.city, country: @organization.country, name: @organization.name, postcode: @organization.postcode, reg_no: @organization.reg_no, state: @organization.state, status: @organization.status, street: @organization.street, user_id: @organization.user_id }
    end

    assert_redirected_to organization_path(assigns(:organization))
  end

  test "should show organization" do
    get :show, id: @organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organization
    assert_response :success
  end

  test "should update organization" do
    patch :update, id: @organization, organization: { city: @organization.city, country: @organization.country, name: @organization.name, postcode: @organization.postcode, reg_no: @organization.reg_no, state: @organization.state, status: @organization.status, street: @organization.street, user_id: @organization.user_id }
    assert_redirected_to organization_path(assigns(:organization))
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete :destroy, id: @organization
    end

    assert_redirected_to organizations_path
  end
end
