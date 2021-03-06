# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
  config.action_mailer.delivery_method = :test

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "example.com",
    authentication: "plain",
    user_name: ENV["EMAIL_ADDRESS"],
    password: ENV["EMAIL_PASSWORD"],
    enable_starttls_auto: true
    }
end