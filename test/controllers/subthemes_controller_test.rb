require 'test_helper'

class SubthemesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subtheme = subthemes(:one)
  end

  test "should get index" do
    get subthemes_url
    assert_response :success
  end

  test "should get new" do
    get new_subtheme_url
    assert_response :success
  end

  test "should create subtheme" do
    assert_difference('Subtheme.count') do
      post subthemes_url, params: { subtheme: { comment: @subtheme.comment, theme_id: @subtheme.theme_id, title: @subtheme.title } }
    end

    assert_redirected_to subtheme_url(Subtheme.last)
  end

  test "should show subtheme" do
    get subtheme_url(@subtheme)
    assert_response :success
  end

  test "should get edit" do
    get edit_subtheme_url(@subtheme)
    assert_response :success
  end

  test "should update subtheme" do
    patch subtheme_url(@subtheme), params: { subtheme: { comment: @subtheme.comment, theme_id: @subtheme.theme_id, title: @subtheme.title } }
    assert_redirected_to subtheme_url(@subtheme)
  end

  test "should destroy subtheme" do
    assert_difference('Subtheme.count', -1) do
      delete subtheme_url(@subtheme)
    end

    assert_redirected_to subthemes_url
  end
end
