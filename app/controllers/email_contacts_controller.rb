class EmailContactsController < ApplicationController
  # before_action :set_email_contact, only: [:show, :edit, :update, :destroy]

  # GET /email_contacts
  # GET /email_contacts.json
  # def index
  #   @email_contacts = EmailContact.all
  # end

  # # GET /email_contacts/1
  # # GET /email_contacts/1.json
  # def show
  # end

  # GET /email_contacts/new
  def new
    @email_contact = EmailContact.new
  end

  # # GET /email_contacts/1/edit
  # def edit
  # end

  # POST /email_contacts
  # POST /email_contacts.json
  def create
    @email_contact = EmailContact.new(email_contact_params)

    respond_to do |format|
      if @email_contact.save
        # EmailContactMailer.with(email_contact: @email_contact).new_email_contact_email.deliver_later
        format.html { redirect_to root_path, notice: 'Email contact was successfully created.' }
        format.json { render :show, status: :created, location: @email_contact }
      else
        format.html { render :new }
        format.json { render json: @email_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_contacts/1
  # PATCH/PUT /email_contacts/1.json
  # def update
  #   respond_to do |format|
  #     if @email_contact.update(email_contact_params)
  #       format.html { redirect_to @email_contact, notice: 'Email contact was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @email_contact }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @email_contact.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /email_contacts/1
  # # DELETE /email_contacts/1.json
  # def destroy
  #   @email_contact.destroy
  #   respond_to do |format|
  #     format.html { redirect_to email_contacts_url, notice: 'Email contact was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_email_contact
    #   @email_contact = EmailContact.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def email_contact_params
      params.require(:email_contact).permit(:email, :content)
    end
end
