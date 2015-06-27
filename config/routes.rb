Rails.application.routes.draw do
  root 'application#index'
  get 'bookings' => 'application#booking'
  post 'bookings' => 'application#place_booking'
  get 'gallery' => 'application#gallery'
end
