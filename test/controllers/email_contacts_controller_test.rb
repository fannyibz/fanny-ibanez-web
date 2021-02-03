require "test_helper"

class EmailContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @email_contact = email_contacts(:one)
  end

  test "should get index" do
    get email_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_email_contact_url
    assert_response :success
  end

  test "should create email_contact" do
    assert_difference('EmailContact.count') do
      post email_contacts_url, params: { email_contact: { content: @email_contact.content, email: @email_contact.email } }
    end

    assert_redirected_to email_contact_url(EmailContact.last)
  end

  test "should show email_contact" do
    get email_contact_url(@email_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_email_contact_url(@email_contact)
    assert_response :success
  end

  test "should update email_contact" do
    patch email_contact_url(@email_contact), params: { email_contact: { content: @email_contact.content, email: @email_contact.email } }
    assert_redirected_to email_contact_url(@email_contact)
  end

  test "should destroy email_contact" do
    assert_difference('EmailContact.count', -1) do
      delete email_contact_url(@email_contact)
    end

    assert_redirected_to email_contacts_url
  end
end
