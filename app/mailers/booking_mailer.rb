class BookingMailer < ActionMailer::Base
  def format(name, email)
    "\"#{name}\" <#{email}>"
  end

  def confirm(booking)
    @booking = booking
    mail from: the_postmasters,
         to: format(booking.name, booking.email),
         subject: 'Your Postmasters Booking'
  end 
  
  def book(booking)
    @booking = booking
    mail from: the_postmasters,
         to: the_postmasters,
         subject: 'New Postmasters Booking'
  end

  def the_postmasters
    format('The Postmasters Lodgings', ENV['ZOHO_USERNAME'])
  end
end
