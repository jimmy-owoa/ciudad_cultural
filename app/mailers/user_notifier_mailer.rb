class UserNotifierMailer < ApplicationMailer

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_contact(name, email, message, phone)
    @message = message
    @phone = phone
    @name = name
    mail(:to => "contacto@laciudadcultural.cl", :subject => "Contacto web [La Ciudad Cultural]", :from => email)
  end
end
