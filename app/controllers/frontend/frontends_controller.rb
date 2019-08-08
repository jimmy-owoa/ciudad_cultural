class Frontend::FrontendsController < ApplicationController
  layout 'application'

  def index
    @events = User::Event.next_events
  end

  def contact 
  end
  
  def send_email
    name = params[:name]
    email = params[:email]
    message = params[:message]
    phone = params[:phone]
    UserNotifierMailer.send_contact(name, email, message, phone).deliver
    
  end
end
