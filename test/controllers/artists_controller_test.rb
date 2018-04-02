require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get artists_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_url
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post artists_url, params: { artist: { active_from: @artist.active_from, active_status: @artist.active_status, active_to: @artist.active_to, bio: @artist.bio, birth_date: @artist.birth_date, birth_place: @artist.birth_place, first_name: @artist.first_name, last_name: @artist.last_name, stage_name: @artist.stage_name } }
    end

    assert_redirected_to artist_url(Artist.last)
  end

  test "should show artist" do
    get artist_url(@artist)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_url(@artist)
    assert_response :success
  end

  test "should update artist" do
    patch artist_url(@artist), params: { artist: { active_from: @artist.active_from, active_status: @artist.active_status, active_to: @artist.active_to, bio: @artist.bio, birth_date: @artist.birth_date, birth_place: @artist.birth_place, first_name: @artist.first_name, last_name: @artist.last_name, stage_name: @artist.stage_name } }
    assert_redirected_to artist_url(@artist)
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete artist_url(@artist)
    end

    assert_redirected_to artists_url
  end
end
