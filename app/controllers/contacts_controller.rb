class ContactsController < ApplicationController
  before_action :set_contact, only: %i[ show edit update destroy ]

  # GET /contacts or /contacts.json
  def index
    puts('session:'+session[:contact_id].to_s)
    redirect_to "/contacts/"+session[:contact_id].to_s
    @contacts = Contact.all
  end

  # GET /contacts/1 or /contacts/1.json
  def show
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts or /contacts.json
  def create
    
    c = Contact.new(contact_params)

    if(c.email != nil)
      contactInDB = Contact.find_by(email:c.email)
      if(contactInDB != nil)
        puts('**********************************echec email deja présent**********************************')
        redirect_to '/'
      else
        puts('********************************** creation d un contact**********************************')
        @contact = Contact.new(contact_params)

        respond_to do |format|
          if @contact.save
            format.html { redirect_to contact_url(@contact), notice: "Compte créé avec succès." }
            format.json { render :show, status: :created, location: @contact }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @contact.errors, status: :unprocessable_entity }
          end
        end
      end
    end

    puts('************************************************************************************')

  end

  # PATCH/PUT /contacts/1 or /contacts/1.json
  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to contact_url(@contact), notice: "Contact was successfully updated." }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1 or /contacts/1.json
  def destroy
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to contacts_url, notice: "Contact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contact_params
      params.require(:contact).permit(:sfid, :email, :firstname, :lastname, :mobilephone, :accountid, :password__c, :active__c)
    end
end
