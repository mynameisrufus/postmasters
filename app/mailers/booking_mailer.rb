class BookingMailer < ActionMailer::Base
  def format(name, email)
    "\"#{name}\" <#{email}>"
  end

  def confirm(booking)
    @booking = booking
    mail from: the_app,
         to: format(booking.name, booking.email),
         reply_to: stay,
         subject: 'Your Postmasters Booking Enquiry'
  end 
  
  def book(booking)
    @booking = booking
    mail from: the_app,
         to: stay,
         reply_to: booking.email,
         subject: "Booking Enquiry from #{booking.name}"
  end

  def stay
    'stay@thepostmasterslodgings.co.nz'
  end

  def the_app
    format('The Postmasters Lodgings', ENV['ZOHO_USERNAME'])
  end
end
