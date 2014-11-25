class WelcomeController < ApplicationController
  def index
    @contact = Contact.new
    render "welcome/index"
  end

  def procurement
    @contact = Contact.new
  end

  def stories
    @contact = Contact.new
  end

  def monitoring
    @contact = Contact.new
  end

  def vehicle
    @contact = Contact.new
  end

  def management
    @contact = Contact.new
  end

end
