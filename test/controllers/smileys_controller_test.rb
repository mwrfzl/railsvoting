require "test_helper"

class SmileysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smiley = smileys(:one)
  end

  test "should get index" do
    get smileys_url
    assert_response :success
  end

  test "should get new" do
    get new_smiley_url
    assert_response :success
  end

  test "should create smiley" do
    assert_difference('Smiley.count') do
      post smileys_url, params: { smiley: { image: @smiley.image } }
    end

    assert_redirected_to smiley_url(Smiley.last)
  end

  test "should show smiley" do
    get smiley_url(@smiley)
    assert_response :success
  end

  test "should get edit" do
    get edit_smiley_url(@smiley)
    assert_response :success
  end

  test "should update smiley" do
    patch smiley_url(@smiley), params: { smiley: { image: @smiley.image } }
    assert_redirected_to smiley_url(@smiley)
  end

  test "should destroy smiley" do
    assert_difference('Smiley.count', -1) do
      delete smiley_url(@smiley)
    end

    assert_redirected_to smileys_url
  end
end
