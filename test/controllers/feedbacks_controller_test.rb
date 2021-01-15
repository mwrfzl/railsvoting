require "test_helper"

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get feedbacks_url
    assert_response :success
  end

  test "should get new" do
    get new_feedback_url
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post feedbacks_url, params: { feedback: { foul_smell: @feedback.foul_smell, hand_dryer: @feedback.hand_dryer, mirror_dirty: @feedback.mirror_dirty, no_soap: @feedback.no_soap, rubbish_bin: @feedback.rubbish_bin, toilet_bowl: @feedback.toilet_bowl, toilet_paper: @feedback.toilet_paper, water_tap: @feedback.water_tap, wet_floor: @feedback.wet_floor } }
    end

    assert_redirected_to feedback_url(Feedback.last)
  end

  test "should show feedback" do
    get feedback_url(@feedback)
    assert_response :success
  end

  test "should get edit" do
    get edit_feedback_url(@feedback)
    assert_response :success
  end

  test "should update feedback" do
    patch feedback_url(@feedback), params: { feedback: { foul_smell: @feedback.foul_smell, hand_dryer: @feedback.hand_dryer, mirror_dirty: @feedback.mirror_dirty, no_soap: @feedback.no_soap, rubbish_bin: @feedback.rubbish_bin, toilet_bowl: @feedback.toilet_bowl, toilet_paper: @feedback.toilet_paper, water_tap: @feedback.water_tap, wet_floor: @feedback.wet_floor } }
    assert_redirected_to feedback_url(@feedback)
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete feedback_url(@feedback)
    end

    assert_redirected_to feedbacks_url
  end
end
