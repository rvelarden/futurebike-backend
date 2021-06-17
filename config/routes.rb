Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/bikes' => 'bikes#index'
  get '/bookings' => 'bookings#index'
  # post '/bookings' => 'bookings#create'
  # # patch '/bookings' => 'bookings#edit'
  # patch '/bookings/:id' => 'bookings#update'
  # delete '/bookings/:id' => 'bookings#destroy'
  # get '/users' => 'users#index'
  # post '/login' => 'auth#create'
  # get '/decode_token' => 'users#main'

end
