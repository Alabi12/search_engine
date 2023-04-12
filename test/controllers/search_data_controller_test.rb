require 'test_helper'

class SearchDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @search_datum = search_data(:one)
  end

  test 'should get index' do
    get search_data_url
    assert_response :success
  end

  test 'should get new' do
    get new_search_datum_url
    assert_response :success
  end

  test 'should create search_datum' do
    assert_difference('SearchDatum.count') do
      post search_data_url,
           params: { search_datum: { article_id: @search_datum.article_id, user_id: @search_datum.user_id } }
    end

    assert_redirected_to search_datum_url(SearchDatum.last)
  end

  test 'should show search_datum' do
    get search_datum_url(@search_datum)
    assert_response :success
  end

  test 'should get edit' do
    get edit_search_datum_url(@search_datum)
    assert_response :success
  end

  test 'should update search_datum' do
    patch search_datum_url(@search_datum),
          params: { search_datum: { article_id: @search_datum.article_id, user_id: @search_datum.user_id } }
    assert_redirected_to search_datum_url(@search_datum)
  end

  test 'should destroy search_datum' do
    assert_difference('SearchDatum.count', -1) do
      delete search_datum_url(@search_datum)
    end

    assert_redirected_to search_data_url
  end
end
