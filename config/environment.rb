# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :address        => "smtp.gmail.com",
    :port           => 587,
    :authentication => :login,
    :user_name      => "ku.dorjee@gmail.com",
    :password       => "mailtoasdf",
    :enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset:"utf-8"
