class ApplicationController < ActionController::Base
  def index
    expires_in 1.day, public: true
  end

  def booking
    @booking = Booking.new
  end

  def place_booking
    @booking = Booking.new(params[:booking])
    if @booking.valid?
      BookingMailer.confirm(@booking).deliver_now
      BookingMailer.book(@booking).deliver_now
      render 'pidgeon'
    else 
      render 'booking'
    end
  end

  def gallery
    expires_in 1.day, public: true
    @pictures = Picture.all
  end
end
