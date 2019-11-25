require 'test_helper'

class SnipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snip = snips(:one)
  end

  test "should get index" do
    get snips_url
    assert_response :success
  end

  test "should get new" do
    get new_snip_url
    assert_response :success
  end

  test "should create snip" do
    assert_difference('Snip.count') do
      post snips_url, params: { snip: { snip: @snip.snip } }
    end

    assert_redirected_to snip_url(Snip.last)
  end

  test "should show snip" do
    get snip_url(@snip)
    assert_response :success
  end

  test "should get edit" do
    get edit_snip_url(@snip)
    assert_response :success
  end

  test "should update snip" do
    patch snip_url(@snip), params: { snip: { snip: @snip.snip } }
    assert_redirected_to snip_url(@snip)
  end

  test "should destroy snip" do
    assert_difference('Snip.count', -1) do
      delete snip_url(@snip)
    end

    assert_redirected_to snips_url
  end
end
