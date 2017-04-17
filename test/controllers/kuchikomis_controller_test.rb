require 'test_helper'

class KuchikomisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kuchikomi = kuchikomis(:one)
  end

  test "should get index" do
    get kuchikomis_url
    assert_response :success
  end

  test "should get new" do
    get new_kuchikomi_url
    assert_response :success
  end

  test "should create kuchikomi" do
    assert_difference('Kuchikomi.count') do
      post kuchikomis_url, params: { kuchikomi: { review_content: @kuchikomi.review_content, scenery_id: @kuchikomi.scenery_id, user_id: @kuchikomi.user_id } }
    end

    assert_redirected_to kuchikomi_url(Kuchikomi.last)
  end

  test "should show kuchikomi" do
    get kuchikomi_url(@kuchikomi)
    assert_response :success
  end

  test "should get edit" do
    get edit_kuchikomi_url(@kuchikomi)
    assert_response :success
  end

  test "should update kuchikomi" do
    patch kuchikomi_url(@kuchikomi), params: { kuchikomi: { review_content: @kuchikomi.review_content, scenery_id: @kuchikomi.scenery_id, user_id: @kuchikomi.user_id } }
    assert_redirected_to kuchikomi_url(@kuchikomi)
  end

  test "should destroy kuchikomi" do
    assert_difference('Kuchikomi.count', -1) do
      delete kuchikomi_url(@kuchikomi)
    end

    assert_redirected_to kuchikomis_url
  end
end
