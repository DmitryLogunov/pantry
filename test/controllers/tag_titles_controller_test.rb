require 'test_helper'

class TagTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_title = tag_titles(:one)
  end

  test "should get index" do
    get tag_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_title_url
    assert_response :success
  end

  test "should create tag_title" do
    assert_difference('TagTitle.count') do
      post tag_titles_url, params: { tag_title: { title: @tag_title.title } }
    end

    assert_redirected_to tag_title_url(TagTitle.last)
  end

  test "should show tag_title" do
    get tag_title_url(@tag_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_title_url(@tag_title)
    assert_response :success
  end

  test "should update tag_title" do
    patch tag_title_url(@tag_title), params: { tag_title: { title: @tag_title.title } }
    assert_redirected_to tag_title_url(@tag_title)
  end

  test "should destroy tag_title" do
    assert_difference('TagTitle.count', -1) do
      delete tag_title_url(@tag_title)
    end

    assert_redirected_to tag_titles_url
  end
end
