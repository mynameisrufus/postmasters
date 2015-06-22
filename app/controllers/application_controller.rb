class ApplicationController < ActionController::Base

  before_filter do
    @s3_url = "http://s3.amazonaws.com/thepostmasterslodgings.co.nz"
  end

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
      render 'new'
    end
  end

  def gallery
    expires_in 1.day, public: true

    @pictures = [
      {:name => "postmasters_24", :title => "The kitchen", :desc => "This is where the fabulous meals at the Postmasters are prepared (available on request)"},
      {:name => "postmasters_25", :title => "Street level", :desc => "The Postmasters seen from the main street of Rawene"},
      {:name => "postmasters_27", :title => "Fire place", :desc => "The fire place, put on in the mildly cold winter months"},
      {:name => "postmasters_28", :title => "Room 2", :desc => "French door and sitting table of room 2"},
      {:name => "postmasters_12", :title => "Room 2", :desc => "Room two from the as seen from the bathroom of room two"},
      {:name => "postmasters_29", :title => "Deck", :desc => "A small part of the Postmasters extensive decking"},
      {:name => "postmasters_30", :title => "Room 1", :desc => "Room one of the Postmasters"},
      {:name => "postmasters_32", :title => "Room 1", :desc => "The fireplace (not used) and entrance to room one"},
      {:name => "postmasters_31", :title => "View from the Postmasters", :desc => "View of the harbour facing Kohukoho"},
      {:name => "postmasters_33", :title => "Fire place", :desc => "The fire place of the Postmasters"},
      {:name => "postmasters_34", :title => "Hallway", :desc => "The entrance hallway of the Postmasters"},
      {:name => "postmasters_35", :title => "John Post", :desc => "John Post of the Postmasters and his visiting son"},
      {:name => "postmasters_36", :title => "Evening", :desc => "Late evening at the Postmasters "},
      {:name => "postmasters_37", :title => "Television sitting room", :desc => "The only television at the Postmasters resides in this room"},
      {:name => "postmasters_01", :title => "Rawene Ferry", :desc => "State highway 12 to Kohukohu and onto Cape Reinga"},
      {:name => "postmasters_02", :title => "Over looking Rawene harbour", :desc => "View of motukaraka from the deck of the Postmasters"},
      {:name => "postmasters_08", :title => "Food on the deck", :desc => "During the summer food on the deck"},
      {:name => "postmasters_09", :title => "Room 4", :desc => "Room four of the Postmasters"},
      {:name => "postmasters_10", :title => "Reception room", :desc => "Reception room for breakfast and reading"},
      {:name => "postmasters_13", :title => "Room 4", :desc => "Room four of the Postmasters"},
      {:name => "postmasters_14", :title => "View from the Postmasters", :desc => "One of the many views of the Ferry from the deck of the Postmasters"},
      {:name => "postmasters_15", :title => "Kitchen", :desc => "Part of the kitchen of the Postmasters"},
      {:name => "postmasters_16", :title => "View from the deck", :desc => "View from the deck of the Postmasters"},
      {:name => "postmasters_17", :title => "Dusk", :desc => "View from the deck of the Postmasters at dusk"},
      {:name => "postmasters_18", :title => "Julie Harmen", :desc => "Rawene fixtures Julie and Harmen play music on the deck"},
      {:name => "postmasters_19", :title => "Night", :desc => "The Postmasters at night"},
      {:name => "postmasters_20", :title => "Rawene Shops", :desc => "View of the shops from the deck of the Postmasters"},
      {:name => "postmasters_21", :title => "Cooling off", :desc => "Ice cream on a hot day"},
      {:name => "postmasters_22", :title => "Tree and Hokianga harbour", :desc => "Photo by rollo"},
      {:name => "postmasters_23", :title => "Room 2", :desc => "Room two of the Postmasters"}
    ]
  end
end
