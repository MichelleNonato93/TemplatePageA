class WelcomeController < ApplicationController
  def index
    @contact = Contact.new
    render "welcome/index"
  end

end
