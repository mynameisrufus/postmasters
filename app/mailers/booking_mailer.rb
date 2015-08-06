class BookingMailer < ActionMailer::Base
  def confirm(booking)
    @booking = booking
    mail from: johns_email,
         to: booking.email,
         subject: "Your Postmasters Booking"
  end 
  
  def book(booking)
    @booking = booking
    mail from: booking.email,
         to: johns_email,
         subject: "New Postmasters Booking"
  end

  def johns_email
    "thepostmasterslodgings@vodafone.co.nz"
  end
end
