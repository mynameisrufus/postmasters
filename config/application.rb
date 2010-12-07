require File.expand_path('../boot', __FILE__)

require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"

Bundler.require(:default, Rails.env) if defined?(Bundler)

module Postmasters
  class Application < Rails::Application
    config.time_zone = 'Auckland'

    config.encoding = "utf-8"
    
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :address        => "smtp.sendgrid.net",
      :port           => "25",
      :authentication => :plain,
      :user_name      => ENV['SENDGRID_USERNAME'],
      :password       => ENV['SENDGRID_PASSWORD'],
      :domain         => ENV['SENDGRID_DOMAIN']
    }

    config.filter_parameters += [:password]
  end
end
