require 'test_helper'

class RacketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racket = rackets(:one)
  end

  test "should get index" do
    get rackets_url
    assert_response :success
  end

  test "should get new" do
    get new_racket_url
    assert_response :success
  end

  test "should create racket" do
    assert_difference('Racket.count') do
      post rackets_url, params: { racket: { level: @racket.level, maker_id: @racket.maker_id, model_player_id: @racket.model_player_id, name: @racket.name, page_count: @racket.page_count, point_feeling: @racket.point_feeling, point_physical: @racket.point_physical, point_playing_style: @racket.point_playing_style, point_spin: @racket.point_spin, point_support: @racket.point_support, price: @racket.price, series_id: @racket.series_id, spec_balance: @racket.spec_balance, spec_face: @racket.spec_face, spec_length: @racket.spec_length, spec_model: @racket.spec_model, spec_string_pattern: @racket.spec_string_pattern, spec_thickness: @racket.spec_thickness, spec_weight: @racket.spec_weight, string_id: @racket.string_id, url: @racket.url } }
    end

    assert_redirected_to racket_url(Racket.last)
  end

  test "should show racket" do
    get racket_url(@racket)
    assert_response :success
  end

  test "should get edit" do
    get edit_racket_url(@racket)
    assert_response :success
  end

  test "should update racket" do
    patch racket_url(@racket), params: { racket: { level: @racket.level, maker_id: @racket.maker_id, model_player_id: @racket.model_player_id, name: @racket.name, page_count: @racket.page_count, point_feeling: @racket.point_feeling, point_physical: @racket.point_physical, point_playing_style: @racket.point_playing_style, point_spin: @racket.point_spin, point_support: @racket.point_support, price: @racket.price, series_id: @racket.series_id, spec_balance: @racket.spec_balance, spec_face: @racket.spec_face, spec_length: @racket.spec_length, spec_model: @racket.spec_model, spec_string_pattern: @racket.spec_string_pattern, spec_thickness: @racket.spec_thickness, spec_weight: @racket.spec_weight, string_id: @racket.string_id, url: @racket.url } }
    assert_redirected_to racket_url(@racket)
  end

  test "should destroy racket" do
    assert_difference('Racket.count', -1) do
      delete racket_url(@racket)
    end

    assert_redirected_to rackets_url
  end
end
