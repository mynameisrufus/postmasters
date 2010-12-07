class BookingMailer < ActionMailer::Base
  default :from => "ferrymans@xtra.co.nz"

  config.action_mailer.delivery_method = :smtp 
  config.action_mailer.smtp_settings = {
    :address              => "smtp.xtra.co.nz",
    :port                 => 465,
    :user_name            => 'ferrymans@xtra.co.nz',
    :password             => 'jp181240',
    :authentication       => 'plain'
  }

  def confirm(booking)
    mail(:to => booking.email,  :subject => "Please see the Terms and Conditions attached")
  end 
end
