# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Ticketee::Application.initialize!

if ENV['MAILTRAP_HOST'].present?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :user_name => ENV['MAILTRAP_USER_NAME'],
    :password => ENV['MAILTRAP_PASSWORD'],
    :address => ENV['MAILTRAP_HOST'],
    :port => ENV['MAILTRAP_PORT'],
    :authentication => :plain
  }
end
