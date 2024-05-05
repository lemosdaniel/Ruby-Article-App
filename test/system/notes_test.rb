require "application_system_test_case"

class NotesTest < ApplicationSystemTestCase
  setup do
    @note = notes(:one)
  end

  test "visiting the index" do
    visit notes_url
    assert_selector "h1", text: "articles"
  end

  test "should create article" do
    visit notes_url
    click_on "New article"

    fill_in "Description", with: @note.description
    fill_in "Title", with: @note.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit note_url(@note)
    click_on "Edit this Article", match: :first

    fill_in "Description", with: @note.description
    fill_in "Title", with: @note.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit note_url(@note)
    click_on "Destroy this Article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
