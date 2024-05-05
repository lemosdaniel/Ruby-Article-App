require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get notes_url
    assert_response :success
  end

  test "should get new" do
    get new_note_url
    assert_response :success
  end

  test "should create article" do
    assert_difference("Note.count") do
      post notes_url, params: { note: { description: @note.description, title: @note.title } }
    end

    assert_redirected_to note_url(Note.last)
  end

  test "should show article" do
    get note_url(@note)
    assert_response :success
  end

  test "should get edit" do
    get edit_note_url(@note)
    assert_response :success
  end

  test "should update article" do
    patch note_url(@note), params: { note: { description: @note.description, title: @note.title } }
    assert_redirected_to note_url(@note)
  end

  test "should destroy article" do
    assert_difference("Note.count", -1) do
      delete note_url(@note)
    end

    assert_redirected_to notes_url
  end
end
