class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter :cache, :only => [:index, :gallery]

  def index; end

  def booking;
    if request.post?
      @booking = Booking.new(params[:booking])
      if @booking.valid?
        BookingMailer.confirm(@booking).deliver
        BookingMailer.book(@booking).deliver
        render 'pidgeon'
      end
    else
      @booking = Booking.new
    end
  end

  def gallery;
    @pictures = [
      {:name => "postmasters_01", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_02", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_04", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_05", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_06", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_07", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_08", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_09", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_10", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_11", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_12", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_13", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_14", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_15", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_16", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_17", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_18", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_19", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_20", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_21", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_22", :title => "Photo by rollo: Rawene beach"},
      {:name => "postmasters_23", :title => "Photo by rollo: Rawene beach"},
    ]
  end

  protected
  def cache
    response.headers['Cache-Control'] = "public, max-age=#{1.week.to_s}"
  end
end
