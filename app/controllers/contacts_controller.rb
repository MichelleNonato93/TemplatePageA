class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create

    @contact = Contact.new(contact_params)

    if @contact.save
      ContactMailer.thankyou_email(@contact).deliver
      puts "save ok"
      flash[:notice] = "ok"
    else
      puts @contact.errors.messages
      flash[:alert] = "not ok"
    end
    render "welcome/index"
  end

  def destroy
    @contact = Contact.find(contact_params)

    if @contact = Contact.destroy
      flash[:notice] = "ok"
    else
      flash[:alert] = "not ok"
    end
  end

  def contact_params
    params.require(:contact).permit(:id, :name, :email, :organization, :role, :source, :created_at, :updated_at)
  end
end
