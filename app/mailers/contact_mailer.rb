class ContactMailer < ActionMailer::Base
  default :from => "michelle.nonato@gmail.com"

  def thankyou_email(contact)
    @contact = contact
    mail(:to => @contact.email, :subject => "Registered")
  end
end
