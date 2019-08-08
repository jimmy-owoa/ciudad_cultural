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
    #UserNotifierMailer.send_contact(name, email, message, phone).deliver
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Correo enviado exitosamente.' }
    end
  end

  def talca
    @talca_events = User::Event.talca_events
  end
end
