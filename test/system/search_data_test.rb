require 'application_system_test_case'

class SearchDataTest < ApplicationSystemTestCase
  setup do
    @search_datum = search_data(:one)
  end

  test 'visiting the index' do
    visit search_data_url
    assert_selector 'h1', text: 'Search data'
  end

  test 'should create search datum' do
    visit search_data_url
    click_on 'New search datum'

    fill_in 'Article', with: @search_datum.article_id
    fill_in 'User', with: @search_datum.user_id
    click_on 'Create Search datum'

    assert_text 'Search datum was successfully created'
    click_on 'Back'
  end

  test 'should update Search datum' do
    visit search_datum_url(@search_datum)
    click_on 'Edit this search datum', match: :first

    fill_in 'Article', with: @search_datum.article_id
    fill_in 'User', with: @search_datum.user_id
    click_on 'Update Search datum'

    assert_text 'Search datum was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Search datum' do
    visit search_datum_url(@search_datum)
    click_on 'Destroy this search datum', match: :first

    assert_text 'Search datum was successfully destroyed'
  end
end
