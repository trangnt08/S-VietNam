require 'test_helper'

class MeibutusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meibutu = meibutus(:one)
  end

  test "should get index" do
    get meibutus_url
    assert_response :success
  end

  test "should get new" do
    get new_meibutu_url
    assert_response :success
  end

  test "should create meibutu" do
    assert_difference('Meibutu.count') do
      post meibutus_url, params: { meibutu: { specialty_name: @meibutu.specialty_name, specialty_picture: @meibutu.specialty_picture, speciatly_id: @meibutu.speciatly_id } }
    end

    assert_redirected_to meibutu_url(Meibutu.last)
  end

  test "should show meibutu" do
    get meibutu_url(@meibutu)
    assert_response :success
  end

  test "should get edit" do
    get edit_meibutu_url(@meibutu)
    assert_response :success
  end

  test "should update meibutu" do
    patch meibutu_url(@meibutu), params: { meibutu: { specialty_name: @meibutu.specialty_name, specialty_picture: @meibutu.specialty_picture, speciatly_id: @meibutu.speciatly_id } }
    assert_redirected_to meibutu_url(@meibutu)
  end

  test "should destroy meibutu" do
    assert_difference('Meibutu.count', -1) do
      delete meibutu_url(@meibutu)
    end

    assert_redirected_to meibutus_url
  end
end
