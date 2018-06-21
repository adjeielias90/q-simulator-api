require 'test_helper'

class MockexamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mockexam = mockexams(:one)
  end

  test "should get index" do
    get mockexams_url
    assert_response :success
  end

  test "should get new" do
    get new_mockexam_url
    assert_response :success
  end

  test "should create mockexam" do
    assert_difference('Mockexam.count') do
      post mockexams_url, params: { mockexam: { level_id: @mockexam.level_id, name: @mockexam.name, subject_id: @mockexam.subject_id } }
    end

    assert_redirected_to mockexam_url(Mockexam.last)
  end

  test "should show mockexam" do
    get mockexam_url(@mockexam)
    assert_response :success
  end

  test "should get edit" do
    get edit_mockexam_url(@mockexam)
    assert_response :success
  end

  test "should update mockexam" do
    patch mockexam_url(@mockexam), params: { mockexam: { level_id: @mockexam.level_id, name: @mockexam.name, subject_id: @mockexam.subject_id } }
    assert_redirected_to mockexam_url(@mockexam)
  end

  test "should destroy mockexam" do
    assert_difference('Mockexam.count', -1) do
      delete mockexam_url(@mockexam)
    end

    assert_redirected_to mockexams_url
  end
end
