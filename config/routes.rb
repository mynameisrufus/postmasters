Postmasters::Application.routes.draw do
  root :to => "application#index"
  match "booking" => "application#booking"
  match "gallery" => "application#gallery"
end
