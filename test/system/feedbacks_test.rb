require "application_system_test_case"

class FeedbacksTest < ApplicationSystemTestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "visiting the index" do
    visit feedbacks_url
    assert_selector "h1", text: "Feedbacks"
  end

  test "creating a Feedback" do
    visit feedbacks_url
    click_on "New Feedback"

    check "Foul smell" if @feedback.foul_smell
    check "Hand dryer" if @feedback.hand_dryer
    check "Mirror dirty" if @feedback.mirror_dirty
    check "No soap" if @feedback.no_soap
    check "Rubbish bin" if @feedback.rubbish_bin
    check "Toilet bowl" if @feedback.toilet_bowl
    check "Toilet paper" if @feedback.toilet_paper
    check "Water tap" if @feedback.water_tap
    check "Wet floor" if @feedback.wet_floor
    click_on "Create Feedback"

    assert_text "Feedback was successfully created"
    click_on "Back"
  end

  test "updating a Feedback" do
    visit feedbacks_url
    click_on "Edit", match: :first

    check "Foul smell" if @feedback.foul_smell
    check "Hand dryer" if @feedback.hand_dryer
    check "Mirror dirty" if @feedback.mirror_dirty
    check "No soap" if @feedback.no_soap
    check "Rubbish bin" if @feedback.rubbish_bin
    check "Toilet bowl" if @feedback.toilet_bowl
    check "Toilet paper" if @feedback.toilet_paper
    check "Water tap" if @feedback.water_tap
    check "Wet floor" if @feedback.wet_floor
    click_on "Update Feedback"

    assert_text "Feedback was successfully updated"
    click_on "Back"
  end

  test "destroying a Feedback" do
    visit feedbacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feedback was successfully destroyed"
  end
end
