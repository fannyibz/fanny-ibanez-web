json.extract! email_contact, :id, :email, :content, :created_at, :updated_at
json.url email_contact_url(email_contact, format: :json)
