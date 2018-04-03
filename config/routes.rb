Rails.application.routes.draw do
  get 'passengers/index'

  get 'passenger/index'

  get 'trips/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


    resources :trips
    resources :passengers
    resources :driver

end
