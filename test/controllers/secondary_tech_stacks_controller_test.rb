require "test_helper"

class SecondaryTechStacksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get secondary_tech_stacks_index_url
    assert_response :success
  end

  test "should get new" do
    get secondary_tech_stacks_new_url
    assert_response :success
  end

  test "should get edit" do
    get secondary_tech_stacks_edit_url
    assert_response :success
  end

  test "should get show" do
    get secondary_tech_stacks_show_url
    assert_response :success
  end
end
