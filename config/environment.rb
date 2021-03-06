# Load the Rails application.
require_relative "application"

ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.credentials.sendgrid[:user_name],
  :password => Rails.application.credentials.sendgrid[:password],
  :domain => "laciudadcultural.cl",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true,
}
# Initialize the Rails application.
Rails.application.initialize!
