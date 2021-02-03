require "application_system_test_case"

class EmailContactsTest < ApplicationSystemTestCase
  setup do
    @email_contact = email_contacts(:one)
  end

  test "visiting the index" do
    visit email_contacts_url
    assert_selector "h1", text: "Email Contacts"
  end

  test "creating a Email contact" do
    visit email_contacts_url
    click_on "New Email Contact"

    fill_in "Content", with: @email_contact.content
    fill_in "Email", with: @email_contact.email
    click_on "Create Email contact"

    assert_text "Email contact was successfully created"
    click_on "Back"
  end

  test "updating a Email contact" do
    visit email_contacts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @email_contact.content
    fill_in "Email", with: @email_contact.email
    click_on "Update Email contact"

    assert_text "Email contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Email contact" do
    visit email_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Email contact was successfully destroyed"
  end
end
