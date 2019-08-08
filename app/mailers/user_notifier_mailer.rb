class UserNotifierMailer < ApplicationMailer

	# send a signup email to the user, pass in the user object that   contains the user's email address
	def send_contact(name, email, message, phone)
		@message = message
		@phone = phone
		@name = name
		mail( :to => 'jeremiasgup@gmail.com', :subject => 'Formulario de contacto web', :from => email)
	end
end