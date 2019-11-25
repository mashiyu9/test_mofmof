require 'test_helper'

class PropetiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @propety = propeties(:one)
  end

  test "should get index" do
    get propeties_url
    assert_response :success
  end

  test "should get new" do
    get new_propety_url
    assert_response :success
  end

  test "should create propety" do
    assert_difference('Propety.count') do
      post propeties_url, params: { propety: { address: @propety.address, age: @propety.age, name: @propety.name, remarks: @propety.remarks, rent: @propety.rent } }
    end

    assert_redirected_to propety_url(Propety.last)
  end

  test "should show propety" do
    get propety_url(@propety)
    assert_response :success
  end

  test "should get edit" do
    get edit_propety_url(@propety)
    assert_response :success
  end

  test "should update propety" do
    patch propety_url(@propety), params: { propety: { address: @propety.address, age: @propety.age, name: @propety.name, remarks: @propety.remarks, rent: @propety.rent } }
    assert_redirected_to propety_url(@propety)
  end

  test "should destroy propety" do
    assert_difference('Propety.count', -1) do
      delete propety_url(@propety)
    end

    assert_redirected_to propeties_url
  end
end
