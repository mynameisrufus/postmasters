Rails.application.routes.draw do
  root 'application#index'
  get 'booking' => 'application#booking'
  post 'booking' => 'application#place_booking'
  get 'gallery' => 'application#gallery'
end
