class ContactsController < ApplicationController

  def new
    @contact = Contact.new
    render "welcome/index"
  end

  def create

    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.thankyou_email(@contact).deliver
      puts "save ok"
      flash[:notice] = "Thank you for Registering!"
      render "welcome/index"
    else
      puts @contact.errors.messages
      flash[:alert] = "Oh, Oh! Unable to register your details."
      render "welcome/index"
    end
  end

  def destroy
    @contact = Contact.find(contact_params)

    if @contact = Contact.destroy
      flash[:notice] = "ok"
      render "welcome/index"
    else
      flash[:alert] = "not ok"
      render "welcome/index"
    end
  end

  def contact_params
    params.require(:contact).permit(:id, :name, :email, :organization, :role, :source, :created_at, :updated_at)
  end
end
