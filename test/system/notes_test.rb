require "application_system_test_case"

class articlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Description", with: @article.description
    fill_in "Title", with: @article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this Article", match: :first

    fill_in "Description", with: @article.description
    fill_in "Title", with: @article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this Article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
