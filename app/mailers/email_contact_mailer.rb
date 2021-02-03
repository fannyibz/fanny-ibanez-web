class EmailContactMailer < ApplicationMailer
  def new_email_contact_email
    @email_contact = params[:email_contact]

    mail(to: "fannyibanez89@gmail.com", subject: "Email from fanny website!")
  end
end
