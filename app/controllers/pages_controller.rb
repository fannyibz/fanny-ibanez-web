class PagesController < ApplicationController
  def cv
  end

  def portfolio
  end

  def contact
    @email_contact = EmailContact.new
  end
end
