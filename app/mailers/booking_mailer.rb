class BookingMailer < ActionMailer::Base
  def format(name, email)
    "\"#{name}\" <#{email}>"
  end

  def confirm(booking)
    @booking = booking
    mail from: the_postmasters,
         to: format(booking.name, booking.email),
         reply_to: 'stay@thepostmasterslodgings.co.nz',
         subject: 'Your Postmasters Booking'
  end 
  
  def book(booking)
    @booking = booking
    mail from: the_postmasters,
         to: the_postmasters,
         reply_to: booking.email,
         subject: 'New Postmasters Booking'
  end

  def the_postmasters
    format('The Postmasters Lodgings', ENV['ZOHO_USERNAME'])
  end
end
